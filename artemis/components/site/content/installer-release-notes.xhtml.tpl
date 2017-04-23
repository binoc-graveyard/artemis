<h1>Pale Moon for Linux installer: Release notes</h1>

<h3>0.2.3 (2017-04-23)</h3>

<p>This is a very small maintenance release to account for changes to the Pale Moon for Linux site.</p>

<p>Fixes/changes:</p>

<ul>
        <li>Updates used URL's to account for changes in the Pale Moon for Linux site backend.</li>
        <li>Only the latest version of Pale Moon can be downloaded and installed (installing previous versions is no longer supported). If you want a previous version of the browser, you'll have to download and extract it manually.</li>
</ul>

<h3>0.2.2 (2016-03-11)</h3>

<p>This is a maintenance release to fix an instance that would cause the installer to hang, as well as some other fixes/improvements.</p>

<p>Fixes/changes:</p>

<ul>
        <li>The installer no longer gets stuck if the user clicks "Cancel" before any part of the Pale Moon archive has been downloaded.</li>
        <li>When choosing the version of Pale Moon to install, "Latest version" is now automatically selected.</li>
        <li>Updated the bashobfus script used by the installer.</li>
        <li>Fixed some typos and updated the oxygen-gtk2 warning message and Readme.</li>
</ul>

<h3>0.2.1 (2015-09-29)</h3>

<p>This is a maintenance release to fix problems when using proxies, as well as other fixes and improvements.</p>

<p>Fixes/changes:</p>

<ul>
	<li>Fixed the "Show versions" button to actually open a page with archived versions available.</li>
        <li>The installer will now display a warning that some versions of the gtk2-oxygen theme engine (if detected) will cause Pale Moon to crash.</li>
        <li>Silenced the xhost terminal output.</li>
        <li>Fixed some issues when using the installer behind a proxy.</li>
        <li>The installer now uses /tmp instead of creating its own temp folder.</li>
        <li>The installer will better clean up residual files after updating Pale Moon.</li>

</ul>

<h3>0.2.0 (2015-06-10)</h3>

<p>This is an important update to address PM4Linuxs move off of SourceForge.</p>

<p>Fixes/changes:</p>

<ul>
	<li><strong>New server:</strong> The installer no longer pulls the binaries from SourceForge, but our own in-house server instead. There will be no further updates to the SourceForge page going forward.</li>
	<li>Fix cases where sudo is configured differently and asks for the root password rather than the users password. Instead of displaying a fixed string &quot;Please enter your password&quot;, itll display whatever the prompt says, e.g. &quot;[sudo] password for (user)&quot;.</li>
</ul>

<h3>0.1.8 (2015-03-30)</h3>

<p>This is a maintenance release to fix an issue with xhost on some distros and various other improvements.</p>

<p>Fixes/changes:</p>

<ul>
	<li>Fix an issue with xhost on some distros (Im looking at you openSUSE)</li>
	<li>Added a visible version number to the titlebar</li>
	<li>Made it possible to open the readme from within the installer</li>
	<li>Made error messages clearer and more user friendly</li>
	<li>Fixed various typos</li>
</ul>

<h3>0.1.7 (2015-02-12)</h3>

<p>This is a maintenance release with mostly under-the-hood improvements.</p>

<p>Fixes/changes:</p>

<ul>
	<li>Use curl to download files</li>
	<li>Improve handling of the XAUTHORITY variable (required for graphical programs to run)</li>
	<li>Rename some cryptically named functions</li>
	<li>Enable the use of &quot;fold&quot; for the readme</li>
	<li>Add command line switches to change options at compile time</li>
</ul>

<h3>0.1.6 (2014-10-17)</h3>

<p>This is a bug fix release to ensure the target directory for Pale Moon exists.</p>

<p>Fixes/changes:</p>

<ul>
	<li>Create /opt automatically</li>
</ul>

<h3>0.1.5 (2014-06-24)</h3>

<p>This is a maintenance release with mostly under-the-hood improvements.</p>

<p>Fixes/changes:</p>

<ul>
	<li>The installer can now elevate itself with both su and sudo</li>
	<li>Added a license to the generated shell script</li>
	<li>Hunspell integration is now done automatically</li>
	<li>Removed the palemoon init script (users can still make configurations via */.profile)</li>
	<li>The compile script now behaves like make/autoconf and will exit on error</li>
	<li>Added checksum verification</li>
</ul>
