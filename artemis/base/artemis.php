<?php
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL

// == | Vars | ================================================================

$strArtemisLiveURL = 'linux.palemoon.org';
$strArtemisDevURL = null;
$strArtemisURL = $strArtemisLiveURL;
$strArtemisSiteName = 'Pale Moon for Linux';
$strArtemisVersion = '1.5.0b1';
$strArtemisDatastore = './datastore/';
$boolDebugMode = false;

$strRequestComponent = funcHTTPGetValue('component');
$arrayArgsComponent = preg_grep('/^component=(.*)/', explode('&', parse_url($_SERVER['REQUEST_URI'], PHP_URL_QUERY)));
$strRequestPath = funcHTTPGetValue('path');

$strApplicationPath = $_SERVER['DOCUMENT_ROOT'] . '/artemis/';
$strComponentsPath = $strApplicationPath . 'components/';
$strModulesPath = $strApplicationPath . 'modules/';
$strGlobalLibPath = $_SERVER['DOCUMENT_ROOT'] . '/lib/';

$arrayComponents = array(
    'site' => $strComponentsPath . 'site/site.php',
    'pminstaller' => $strComponentsPath . 'pminstaller/pminstaller.php',
    '43893' => $strComponentsPath . 'special/special.php'
);

$arrayModules = array(
    'readManifest' => $strModulesPath . 'funcReadManifest.php',
    'vc' => $strGlobalLibPath . 'nsIVersionComparator.php',
    'smarty' => $strGlobalLibPath . 'smarty/Smarty.class.php'
);

// ============================================================================

// == | Function: funcError |==================================================

function funcError($_value) {
    die('Error: ' . $_value);
    
    // We are done here
    exit();
}

// ============================================================================

// == | Function: funcHTTPGetValue |===========================================

function funcHTTPGetValue($_value) {
    $_arrayGET = array_unique($_GET);
    if (!isset($_GET[$_value]) || $_GET[$_value] === '' || $_GET[$_value] === null || empty($_GET[$_value])) {
        return null;
    }
    else {    
        $_finalValue = preg_replace('/[^-a-zA-Z0-9_\-\/\{\}\@\.]/', '', $_GET[$_value]);
        return $_finalValue;
    }
}

// ============================================================================

// == | Function: funcCheckVar | ==============================================

function funcCheckVar($_value) {
    if ($_value === '' || $_value === 'none' || $_value === null || empty($_value)) {
        return null;
    }
    else {
        return $_value;
    }
}

// ============================================================================

// == | funcSendHeader | ======================================================

function funcSendHeader($_value) {
    $_arrayHeaders = array(
        '400' => 'HTTP/1.1 400 Bad Request',
        '404' => 'HTTP/1.0 404 Not Found',
        '501' => 'HTTP/1.0 501 Not Implemented',
        'html' => 'Content-Type: text/html',
        'text' => 'Content-Type: text/plain',
        'xml' => 'Content-Type: text/xml',
        'css' => 'Content-Type: text/css',
        'artemis' => 'X-Artemis: https://github.com/trav90/artemis/',
    );
    
    if (array_key_exists($_value, $_arrayHeaders)) {
        header($_arrayHeaders['artemis']);
        header($_arrayHeaders[$_value]);
        
        if ($_value == '404') {
            // We are done here
            exit();
        }
    }
}

// ============================================================================

// == | Function: funcRedirect |===============================================

function funcRedirect($_strURL) {
	header('Location: ' . $_strURL , true, 302);
    
    // We are done here
    exit();
}

// ============================================================================

// == | Functions: startsWith & endsWith |=====================================
function startsWith($haystack, $needle)
{
     $length = strlen($needle);
     return (substr($haystack, 0, $length) === $needle);
}

function endsWith($haystack, $needle)
{
    $length = strlen($needle);
    if ($length == 0) {
        return true;
    }

    return (substr($haystack, -$length) === $needle);
}

// ============================================================================

// == | Function: funcFormatSize |=============================================

function funcFormatSize( $bytes )
{
        $types = array( 'Bytes', 'KB', 'MB', 'GB', 'TB', 'PB' );
        for( $i = 0; $bytes >= 1024 && $i < ( count( $types ) -1 ); $bytes /= 1024, $i++ );
                return( round( $bytes, 2 ) . " " . $types[$i] );
}

// ============================================================================

// == | Main | ================================================================

if ($_SERVER['SERVER_NAME'] == $strArtemisDevURL) {
    $boolDebugMode = true;
    $strArtemisURL = $strArtemisDevURL;
    if (file_exists('./.git/HEAD')) {
        $_strGitHead = file_get_contents('./.git/HEAD');
        $_strGitSHA1 = file_get_contents('./.git/' . substr($_strGitHead, 5, -1));
        $_strGitBranch = substr($_strGitHead, 16, -1);
        $strArtemisSiteName = 'Artemis Development - Version: ' . $strArtemisVersion . ' - ' .
            'Branch: ' . $_strGitBranch . ' - ' .
            'Commit: ' . $_strGitSHA1;
    }
    else {
        $strArtemisSiteName = 'Artemis Development - Version: ' . $strArtemisVersion;
    }
    error_reporting(E_ALL);
    ini_set("display_errors", "on");
}

// Deal with unwanted entry points
if ($_SERVER['REQUEST_URI'] == '/') {
    $strRequestComponent = 'site';
    $strRequestPath = '/';
}
elseif ((count($arrayArgsComponent) > 1) || ($strRequestComponent != 'site' && $strRequestPath != null)) {
    funcSendHeader('404');
    exit();
}

// Load component based on strRequestComponent
if ($strRequestComponent != null) {
    if (array_key_exists($strRequestComponent, $arrayComponents)) {
        require_once($arrayComponents[$strRequestComponent]);
    }
    else {
        funcError($strRequestComponent . ' is an unknown component');
    }
}
else {
    funcError('You did not specify a component');
}

// ============================================================================
?>