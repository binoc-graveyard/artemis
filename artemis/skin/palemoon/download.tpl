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
        <li>For further information, please check the pminstaller <a href="/installer-release-notes/">release notes</a> or visit the <a href="https://forum.palemoon.org/viewforum.php?f=37" target="_blank">forum</a>.</li>
    </ul>

    <h3>Download links:</h3>

    <p><a href="/datastore/release/{$PAGE_DATA.linux_installer.file}">Download <strong>tar.bz2</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux_installer.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux_installer.hash}<br />
{if $PAGE_DATA.linux_installer.sig == true}
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux_installer.file}.sig">[Sig]</a></p>
{/if}
    </p>
{elseif $PAGE_TYPE == 'mainline'}
    <h1>Download Pale Moon for Linux release binaries</h1>
    {if $PAGE_DATA.linux64_release.version == $PAGE_DATA.linux32_release.version}
    <h3>Latest version: {$PAGE_DATA.linux64_release.version}</h3>

    <p>If you prefer not to use <a href="/download/installer/">the installer</a>, you can download a tar.bz2 here instead. To use, simply extract the tarball anywhere you like and execute the "palemoon" file inside it, or follow the instructions <a href="/help/installation/">here</a> if you want to install manually. Please be sure to download the correct archive that matches the architecture of your OS.</p>

    <h3>Download links:</h3>

    <p><a href="/datastore/release/{$PAGE_DATA.linux64_release.file}">Download x64 <strong>tar.bz2</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux64_release.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux64_release.hash}<br />
{if $PAGE_DATA.linux64_release.sig == true}
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux64_release.file}.sig">[Sig]</a></p>
{/if}
    </p>

    <p><a href="/datastore/release/{$PAGE_DATA.linux32_release.file}">Download x86 <strong>tar.bz2</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux32_release.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux32_release.hash}<br />
{if $PAGE_DATA.linux32_release.sig == true}
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux32_release.file}.sig">[Sig]</a>
{/if}
    </p>
    
    <p>For more information, please read the <a href="//www.palemoon.org/releasenotes.shtml" target="_blank">release notes</a>.</p>
{else}
    <h3>Mainstream Binaries are currently unavailable. Please try again later.</h3>
    <p><small>Error: i686/x86-64 version mismatch</small>
{/if}
{elseif $PAGE_TYPE == 'unstable'}
    <h1>Download Pale Moon for Linux unstable binaries</h1>
    <p><strong>This version of Pale Moon is built somewhat regularly from the current development source of the browser and should only be considered for use by people who wish to help catch bugs before release.</strong></p>

    <p>This unstable version of Pale Moon comes with recognizable unstable branding (a "blood moon") to clearly differentiate it from the official releases.</p>

    <p>Make sure you make regular backups of your Pale Moon profile as the unstable version may occasionally cause data loss. <strong>The unstable versions do not use a separate user profile</strong>, so if you decide to use this build, your release-version profile will be used and potentially be at risk.</p>

    <h3>Release notes</h3>

    <p>Concise release notes about this development version can be found here: <a href="//www.palemoon.org/unstable/releasenotes.shtml" target="_blank">http://www.palemoon.org/unstable/releasenotes.shtml</a></p>

    <h3>Reporting bugs</h3>

    <p>Please report any bugs you find in the <a href="https://github.com/MoonchildProductions/UXP/issues" target="_blank">issue tracker</a> on GitHub for Pale Moon. When you do so, please <span style="font-weight: bold; color: rgb(204, 0, 0);">check if the bug has already been reported before by others</span> to prevent duplicate entries in the tracker. If you report bugs, make sure to include the build date (as found in the about box) and provide clear information about the bug:</p>

    <ul>
        <li>Clear description of the bug, with a concise and clear title for the issue<br>
           (include exact circumstances and exact error messages, if any)<br>
        </li>
        <li>Steps to reproduce<br>
           (what exactly do you do to cause the bug to become apparent?)<br>
        </li>
        <li>Expected results<br>
           (given the steps taken, what did you expect the browser to do?)<br>
        </li>
        <li>Actual results<br>
           (what did the browser do instead of what was expected?)<br>
        </li>
    </ul>

    <p>Also before you report a bug, make sure that you verify if the bug also manifests in a new profile <strong>with default preferences</strong> and <strong>no installed add-ons</strong>.</p>

    <h2>Updating</h2>

    <p>The unstable version has its own update channel which is separate from the official releases. The preferred way of updating is to let the internal updater do its task (default setting is to update automatically). Note that in order for the internal updater to work on Linux the browser must be extracted to a user-writable location.</p>

    <h2>Download</h2>

    <p>The unstable version for Linux is only available in 64-bit. There are no 32-bit builds of the unstable version available.</p>

    <p><a href="/datastore/release/{$PAGE_DATA.linux64_unstable.file}">Download x64 <strong>tar.bz2</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux64_unstable.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux64_unstable.hash}<br />
{if $PAGE_DATA.linux64_unstable.sig == true}
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux64_unstable.file}.sig">[Sig]</a>
{/if}
    </p>
{/if}
