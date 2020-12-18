
#!/bin/bash
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# ===| BASH Stub |=============================================================

# The beginning of this script is both valid shell and valid python,
# such that the script starts with the shell and is reexecuted with
# the right python.
'''echo' $0: Starting up...
if [ -f "/opt/rh/python27/root/usr/bin/python2.7" ];then
    BINOC_PYTHON_ARGS=$@
    exec scl enable python27 "python $0 $BINOC_PYTHON_ARGS"
elif BINOC_PYTHON_PATH="$(which python2.7 2>/dev/null)"; then
    exec $BINOC_PYTHON_PATH $0 "$@"
else
    echo "$0 error: Python 2.7 was not found on this system"
    exit 1
fi
'''
# =============================================================================

# ===| Imports |===============================================================

from __future__ import print_function
from collections import OrderedDict
import os
import sys
import json
import subprocess
import time
import hashlib
import re

# =============================================================================

# ===| Function: Output Message |==============================================

def funcOutputMessage(_messageType, _messageBody):
    _messagePrefix = "{0}:".format(sys.argv[0])
    _errorPrefix = '{0} error:'.format(_messagePrefix)
    _warnPrefix = '{0} warning:'.format(_messagePrefix)
    _messageTemplates = {
        'statusGen' : '{0} {1}'.format(_messagePrefix, _messageBody),
        'warnGen' : '{0} {1}'.format(_warnPrefix, _messageBody),
        'errorGen' : '{0} {1}'.format(_errorPrefix, _messageBody)
    }

    if _messageType in _messageTemplates:
        print(_messageTemplates[_messageType])
        if _messageType == 'errorGen':
            sys.exit(1)
    else:
        print('{0} Unknown error - Referenced as \'{1}\' internally.'.format(_messagePrefix, _messageType))
        sys.exit(1)

# =============================================================================

# ===| Function: Read JSON |===================================================

def funcReadJson(filename):
    with open(filename) as json_data:
        _jsonData = json.load(json_data, object_pairs_hook=OrderedDict)
    return(_jsonData)

# =============================================================================

# ===| Function: Generate JSON |===============================================

def funcGenJson(_value):
    return json.dumps(_value, sort_keys=False, ensure_ascii=False, indent=4)

# =============================================================================

# ===| function: Generate Checksum |===========================================

def funcChecksum(filename, block_size=65536):
    sha256 = hashlib.sha256()
    with open(filename, 'rb') as f:
        for block in iter(lambda: f.read(block_size), b''):
            sha256.update(block)
    return sha256.hexdigest()

# =============================================================================

strPathCurrent = os.getcwd()
strPathDatastore = '/srv/www/linux.palemoon.org/datastore/release/'
strVersionRegex = r"(palemoon-)([0-9.ab]+)"
listFilesRaw = os.listdir(strPathDatastore)
listTarballs = []
dictManifest = OrderedDict({})

# =============================================================================

if len(sys.argv) > 1:
    if os.path.exists(sys.argv[1]):
        strPathDatastore = sys.argv[1]
        funcOutputMessage('statusGen', 'Setting Release Datastore to ' + sys.argv[1])
    else:
        funcOutputMessage('errorGen', 'Release Datatstore path ' + sys.argv[1] + ' does not exist')

if not strPathDatastore.endswith('/'):
    strPathDatastore = strPathDatastore + '/'
    funcOutputMessage('statusGen', 'Adding trailing slash to ' + sys.argv[1])

for _value in listFilesRaw:
    if _value.endswith('.tar.bz2') or _value.endswith('.tar.xz'):
        listTarballs += [ _value ]

for _value in listTarballs:
    _hash = funcChecksum(strPathDatastore + _value)
    _size = os.path.getsize(strPathDatastore + _value)
    _sig = os.path.exists(strPathDatastore + _value + '.sig')
    _version = re.search(strVersionRegex, _value)

    if _version is not None:
        _version = _version.group(2)[:-1]
    else:
        _version = 'latest'

    if ('palemoon' in _value) and not 'unstable' in _value:
        if 'palemoon' in _value:
            if 'i686' in _value:
                _arch = 'linux32_release'
            elif 'x86_64-gtk3' in _value:
                _arch = 'linux64-gtk3_release'
            else:
                _arch = 'linux64_release'

            dictManifest[_arch] = {
                'file' : _value,
                'version' : _version,
                'hash' : _hash,
                'size' : _size,
                'sig' : _sig
            }
    elif 'unstable' in _value:
        dictManifest['linux64_unstable'] = {
            'file' : _value,
            'version' : _version,
            'size' : _size,
            'hash' : _hash,
            'sig' : _sig
        }

print(funcGenJson(dictManifest))

fileManifest = open(strPathDatastore + 'artemis.manifest', 'wb', 0)
fileManifest.write(funcGenJson(dictManifest))
fileManifest.close()
funcOutputMessage('statusGen', 'Wrote artemis.manifest to ' + strPathDatastore)






