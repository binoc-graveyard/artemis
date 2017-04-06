<?php
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
 
// == | Vars | ================================================================

// Main Entry Points
$strRequestFunction = funcHTTPGetValue('function');

 // ============================================================================

// == | Main | ================================================================

// Sanity
if ($strRequestFunction == null) {
    funcError('Missing function request');
}

if ($strRequestFunction == 'phpvars') {
    funcSendHeader('html');
    phpinfo(32);
}
else {
    funcError('Incorrect function request');
}
?>