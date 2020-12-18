{if $PAGE_TYPE == 'mainline'}
    <h1>Download Pale Moon for Linux</h1>
    {if $PAGE_DATA.linux64_release}
    <h3>Latest release: {$PAGE_DATA.linux64_release.version}</h3>

    <p><strong>New this release:</strong> Details about this update can be found in the <a href="//www.palemoon.org/releasenotes.shtml" target="_blank">Release notes.</a></p>

    <h3>System requirements</h3>

    <p>Pale Moon is specifically optimized for current-day processors and as such requires a reasonably modern system to run properly.</p>

    <ul>
        <li>A modern Linux distribution. The browser may not work well on old or LTS releases of Linux.</li>
        <li>A modern processor (must have SSE2 support as the absolute minimum).</li>
        <li>1GB of RAM (2GB or more recommended for heavy use).</li>
        <li>GTK+ v2.24</li>
        <li>GLib 2.22 or higher</li>
        <li>Pango 1.14 or higher</li>
        <li>libstdc++ 4.6.1 or higher</li>
    </ul>

    <h3>Download links</h3>

    <p>Be sure to download the correct archive that matches the architecture of your OS. To use, simply extract the tarball anywhere you like and execute the "palemoon" file inside it, or follow the instructions <a href="/help/installation/">here</a> if you want to install manually. It is recommended that you extract Pale Moon to a user-writable location so that the internal updater can work as intended to keep your browser up to date.</p>

    <p><a href="/datastore/release/{$PAGE_DATA.linux64_release.file}">Download x64 <strong>tarball</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux64_release.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux64_release.hash}<br />
{if $PAGE_DATA.linux64_release.sig == true}
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux64_release.file}.sig">[Sig]</a></p>
{/if}
    </p>
{else}
    <h3>Mainstream Binaries are currently unavailable. Please try again later.</h3>
{/if}

    <h3>Other downloads</h3>

    <p>Unstable versions: <a href="/download/unstable/" target="_blank">here</a>.<br />
    Source code: see the source code page <a href="//www.palemoon.org/sourcecode.shtml" target="_blank">here</a>.<br />
    Older versions: <a href="//www.palemoon.org/archived.shtml" target="_blank">here</a>.</p>

    <p><strong>NOTE:</strong> Linux 32 bit binaries have been discontined. However, your distribution may still offer 32 bit for your chosen distribution. Otherwise, to continue using the "generic" Pale Moon binaries we distribute, please update to a 64 bit distribution.</p>
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

    <p><a href="/datastore/release/{$PAGE_DATA.linux64_unstable.file}">Download x64 <strong>tarball</strong> (direct download)</a><br />
    Size: {$PAGE_DATA.linux64_unstable.displaySize}<br />
    SHA-256 checksum: {$PAGE_DATA.linux64_unstable.hash}<br />
{if $PAGE_DATA.linux64_unstable.sig == true}
    PGP signature: <a href="/datastore/release/{$PAGE_DATA.linux64_unstable.file}.sig">[Sig]</a>
{/if}
    </p>
{/if}
