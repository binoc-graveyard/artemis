{if $PAGE_TYPE == 'installer'}
    <h1>Download Pale Moon for Linux Installer</h1>
    <h3>Latest version: {$PAGE_DATA.linux_installer.version}</h3>

    <p>The Pale Moon for Linux installer (also referred to as pminstaller) can be used to install, uninstall, and update Pale Moon for Linux. To use it, simply extract the pminstaller-*.tar.bz2 archive and run the pminstaller.sh file.</p>

    <p>Please note the following:</p>

    <ul>
        <li>Some file managers treat the pminstaller.sh file as a normal text file and will try to open it as such (in a text editor). In such cases you must run the installer by:<br/><code>/path/to/the/installer/pminstaller.sh</code></li>
        <li>Do not invoke the installer as root (e.g. &quot;sudo ./pminstaller.sh&quot;), as the installer automatically elevates itself using su(do). On some distros, invoking the installer as rool will strip the XAUTHORITY variable (without which any graphical program cannot run).</li>
        <li>If you receive a &quot;Gtk-WARNING **: cannot open display&quot; error when trying to run the installer, ensure that xhost is installed on your system then try to run the installer again.</li>
        <li>The installer may not run on some &quot;lightweight&quot; distributions since the standard command line tools use busybox (which does not implement all features of the command line tools).</li>
        <li>If the installer does not run because the built-in copy of yad complains about being unable to load a particular library, then you likely do not have the basic dependencies required for any recent Mozilla based product. Please update the related libraries and try again.</li>
        <li>If you have any specialized requirements that the installer does not serve out of the box, then please use the <a href="/help/installation/">manual instructions</a> to install Pale Moon.</li>
        <li>For further information, please check the pminstaller <a href="/information/installer-release-notes/">release notes</a> or visit the <a href="https://forum.palemoon.org/viewforum.php?f=37" target="_blank">forum</a>.</li>
    </ul>

    <h3>Download links:</h3>

    <p><a href="/datastore/release/{$PAGE_DATA.linux_installer.file}">Download <strong>tar.bz2</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux_installer.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux_installer.hash}<br />
{if $PAGE_DATA.linux_installer.sig == true}
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux_installer.file}.sig">[Sig]</a></p>
{/if}
{elseif $PAGE_TYPE == 'mainline'}
    <h1>Download Pale Moon for Linux release binaries</h1>
    {if $PAGE_DATA.linux64_release.version == $PAGE_DATA.linux32_release.version}
    <h3>Latest version: {$PAGE_DATA.linux64_release.version}</h3>

    <p>If you prefer not to use <a href="/download/installer/">the installer</a>, you can download a tar.bz2 here instead. To use, simply extract the tarball anywhere you like and execute the "palemoon" file inside it, or follow the instructions <a href="/help/installation/">here</a> if you want to install manually. Please be sure to download the correct archive that matches the architecture of your OS.</p>

    <h3>Download links:</h3>

    <p><a href="/datastore/release/{$PAGE_DATA.linux64_release.file}">Download x64 <strong>tar.bz2</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux64_release.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux64_release.hash}<br />
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux64_release.file}.sig">[Sig]</a></p>

    <p><a href="/datastore/release/{$PAGE_DATA.linux32_release.file}">Download x86 <strong>tar.bz2</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux32_release.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux32_release.hash}<br />
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux32_release.file}.sig">[Sig]</a></p>

    <p>For more information, please read the <a href="//www.palemoon.org/releasenotes.shtml" target="_blank">release notes</a>.</p>
{else}
    <h3>Mainstream Binaries are currently unavailable. Please try again later.</h3>
    <p><small>Error: i686/x86-64 version mismatch</small>
{/if}
{elseif $PAGE_TYPE == 'unstable'}
<h1>Download Pale Moon for Linux unstable binaries</h1>
<p>
    {$PAGE_DATA.linux64_unstable.file} <br />
    {$PAGE_DATA.linux64_unstable.version} <br />
    {$PAGE_DATA.linux64_unstable.displaySize} <br />
    {$PAGE_DATA.linux64_unstable.hash} <br />
</p>
{/if}