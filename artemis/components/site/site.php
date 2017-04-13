<?php
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL

// == | Vars | ================================================================

$strContentBasePath = './artemis/components/site/content/';
$strSkinBasePath = './artemis/skin/palemoon/';

$arraySmartyPaths = array(
    'cache' => $strApplicationPath . '.smarty/cache',
    'compile' => $strApplicationPath . '.smarty/compile',
    'config' => $strApplicationPath . '.smarty/config',
    'plugins' => $strApplicationPath . '.smarty/plugins',
    'templates' => $strApplicationPath . '.smarty/templates',
);

$arrayStaticPages = array(
    '/' => array(
        'title' => 'Your browser, your way!',
        'contentTemplate' => $strContentBasePath . 'frontpage.xhtml.tpl',
    ),
    '/installer-release-notes/' => array(
        'title' => 'Installer Release Notes',
        'contentTemplate' => $strContentBasePath . 'installer-release-notes.xhtml.tpl',
    ),
    '/help/faq/' => array(
        'title' => 'Frequently Asked Questions',
        'contentTemplate' => $strContentBasePath . 'help/faq.xhtml.tpl',
    ),
    '/help/installation/' => array(
        'title' => 'Installation and Uninstallation',
        'contentTemplate' => $strContentBasePath . 'help/installation.xhtml.tpl',
    ),
);

// ============================================================================

// == | funcGenerateStaticPage | ==============================================

function funcGeneratePage($_array) {
    // Get the required template files
    $_strSiteTemplate = file_get_contents($GLOBALS['strSkinBasePath'] . 'template.tpl');
    $_strStyleSheet = file_get_contents($GLOBALS['strSkinBasePath'] . 'stylesheet.tpl');
    $_strContentTemplate = file_get_contents($_array['contentTemplate']);

    // Merge the stylesheet and the content template into the site template
    $_arrayFilterSubstitute = array(
        '{%PAGE_CONTENT}' => $_strContentTemplate,
        '{%SITE_STYLESHEET}' => $_strStyleSheet,
    );

    foreach ($_arrayFilterSubstitute as $_key => $_value) {
        $_strSiteTemplate = str_replace($_key, $_value, $_strSiteTemplate);
    }

    unset($_strStyleSheet);
    unset($_strContentTemplate);

    // Load Smarty
    require_once($GLOBALS['arrayModules']['smarty']);
    $libSmarty = new Smarty();
    
    // Configure Smarty
    $libSmarty->caching = 0;
    $libSmarty->debugging = false;
    $libSmarty->setCacheDir($GLOBALS['arraySmartyPaths']['cache'])
        ->setCompileDir($GLOBALS['arraySmartyPaths']['compile'])
        ->setConfigDir($GLOBALS['arraySmartyPaths']['config'])
        ->addPluginsDir($GLOBALS['arraySmartyPaths']['plugins'])
        ->setTemplateDir($GLOBALS['arraySmartyPaths']['templates']);

    // Assign data to Smarty
    $libSmarty->assign('SITE_NAME', $GLOBALS['strPhoebusSiteName']);
    $libSmarty->assign('SITE_DOMAIN', '//' . $GLOBALS['strPhoebusURL']);
    $libSmarty->assign('PAGE_TITLE', $_array['title']);
    $libSmarty->assign('BASE_PATH', substr($GLOBALS['strSkinBasePath'], 1));
    $libSmarty->assign('PHOEBUS_VERSION', $GLOBALS['strPhoebusVersion']);
    
    if (array_key_exists('contentData', $_array)) {
        $libSmarty->assign('PAGE_DATA', $_array['contentData']);
    }
    
    if (array_key_exists('contentType', $_array)) {
        $libSmarty->assign('PAGE_TYPE', $_array['contentType']);
    }
    
    // Send html header and pass the final template to Smarty
    funcSendHeader('html');
    $libSmarty->display('string:' . $_strSiteTemplate, null, str_replace('/', '_', $GLOBALS['strRequestPath']));

    // We are done here...
    exit();
}

// ============================================================================

// == | Main | ================================================================

if (startsWith($strRequestPath, '/download/')) {
    funcSendHeader('text');
    print('download page');
}
else {
    if (array_key_exists($strRequestPath, $arrayStaticPages)) {
        funcGeneratePage($arrayStaticPages[$strRequestPath]);
    }
    else {
        funcSendHeader('404');
    }
}

// ============================================================================
?>