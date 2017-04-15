<?php
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL

// == | Vars | ================================================================

$strRequestFunction = funcHTTPGetValue('function');
$strRequestArch = funcHTTPGetValue('architecture');
$strRequestVersion = funcHTTPGetValue('version');

// ============================================================================

// == | Main | ================================================================

require_once($arrayModules['readManifest']);

$arrayManifest = funcReadManifest('release');

// Sanity
if ($strRequestFunction == null) {
    funcError('Missing minimum required arguments.');
}

if ($arrayManifest['linux64_release']['version'] != $arrayManifest['linux32_release']['version']) {
    funcSendHeader('404');
}

if ($strRequestFunction == 'latest') {
    funcSendHeader('text');
    print($arrayManifest['linux64_release']['version']);
}
elseif ($strRequestFunction == 'download') {
    if ($strRequestArch == null || $strRequestVersion == null) {
        funcSendHeader('404');
    }

    if ($strRequestArch == 'x86_64') {
        $strArch = 'linux64_release';
    }
    elseif ($strRequestArch == 'i686') {
        $strArch = 'linux32_release';
    }
    else {
        funcSendHeader('404');
    }
    
    if ($strRequestVersion == $arrayManifest[$strArch]['version']) {
        funcRedirect('http://' . $strArtemisURL . '/datastore/release/' . $strRequestVersion == $arrayManifest[$strArch]['file'])
    }
    else {
        funcSendHeader('404');
    }
}
else {
    funcError('Invalid function');
}

// ============================================================================
?>