<?php
// == | funcReadManifest | ===============================================

function funcReadManifest($_slug) {
    
    $_manifestFile = 'artemus.manifest';
    
    if (file_exists($GLOBALS['strArtemisDatastore'] . $_slug . '/' . $_manifestFile)) {
        $_manifest = file_get_contents($GLOBALS['strArtemisDatastore'] . $_slug . '/' . $_manifestFile)
            or funcError('Could not find manifest file for ' . $_slug);
        $_manifest = json_decode($_manfiest, true);
    }
    else {
        funcError('Could not find manifest file for ' . $_slug);
    }
    
    return $_manifest;
}

// ============================================================================
?>