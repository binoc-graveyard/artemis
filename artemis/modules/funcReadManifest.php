<?php
// == | funcReadManifest | ===============================================

function funcReadManifest($_slug) {
    
    $_manifestFile = 'artemus.manifest';
    
    if (file_exists($GLOBALS['strArtemisDatastore'] . $_slug . '/' . $_manifestFile)) {
        $_manifestRaw = file_get_contents($GLOBALS['strArtemisDatastore'] . $_slug . '/' . $_manifestFile)
            or funcError('Could not find manifest file for ' . $_slug);
        $_manifest = json_decode($_manifestRaw, true);
        
        foreach ($_manifest as $_key => $_value) {
            foreach ($_value as $_key2 => $_value2) {
                if ($_key2 == 'size') {
                    $_manifest[$_key]['displaySize'] = funcFormatSize($_value2);
                }
            }
        }
    }
    else {
        funcError('Could not find manifest file for ' . $_slug);
    }
    
    return $_manifest;
}

// ============================================================================
?>