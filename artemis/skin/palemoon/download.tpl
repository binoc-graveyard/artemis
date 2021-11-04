{if $PAGE_TYPE == 'mainline'}
    <h1>Download Pale Moon for Linux</h1>

    <p>Be sure to check out the latest <a href="//www.palemoon.org/releasenotes.shtml" target="_blank">Release notes.</a></p>

    <h3>System requirements</h3>

    <p>Pale Moon is specifically optimized for current-day processors and as such requires a reasonably modern system to run properly.</p>

    <ul>
        <li>A modern Linux distribution. The browser may not work well on old or LTS releases of Linux.</li>
        <li>A modern processor (must have SSE2 support as the absolute minimum).</li>
        <li>1GB of RAM (2GB or more recommended for heavy use).</li>
        <li>GTK 2.24 or GTK 3.22+ (Not GTK 4)</li>
        <li>GLib 2.22 or higher</li>
        <li>Pango 1.14 or higher</li>
        <li>libstdc++ 4.6.1 or higher</li>
    </ul>

    <h3>Download links</h3>

    <p>Be sure to download the correct archive that matches the architecture of your OS. To use, simply extract the tarball anywhere you like and execute the "palemoon" file inside it, or follow the instructions <a href="/help/installation/">here</a> if you want to install manually. It is recommended that you extract Pale Moon to a user-writable location so that the internal updater can work as intended to keep your browser up to date.</p>

{if $PAGE_DATA.linux64_gtk3_release}
    <p><a href="/datastore/release/{$PAGE_DATA.linux64_gtk3_release.file}"><strong>Download x64 - GTK3 tarball</strong> (direct download)</a><br />
    <strong>Version:</strong> {$PAGE_DATA.linux64_gtk3_release.version}<br />
    <strong>Size:</strong> {$PAGE_DATA.linux64_gtk3_release.displaySize}<br />
    <strong>SHA-256:</strong> {$PAGE_DATA.linux64_gtk3_release.hash}<br />
{if $PAGE_DATA.linux64_gtk3_release.sig == true}
    <strong>PGP:</strong> <a href="/datastore/release/{$PAGE_DATA.linux64_gtk3_release.file}.sig">[Sig]</a></p>
{/if}
    </p>
{else}
    <p><em>The GTK3 Tarball is not currently available. Please try again later.</em></p>
{/if}

{if $PAGE_DATA.linux64_release}
    <p><a href="/datastore/release/{$PAGE_DATA.linux64_release.file}"><strong>Download x64 - GTK2 tarball</strong> (direct download)</a><br />
    <strong>Version:</strong> {$PAGE_DATA.linux64_release.version}<br />
    <strong>Size:</strong> {$PAGE_DATA.linux64_release.displaySize}<br />
    <strong>SHA-256:</strong> {$PAGE_DATA.linux64_release.hash}<br />
{if $PAGE_DATA.linux64_release.sig == true}
    <strong>PGP:</strong> <a href="/datastore/release/{$PAGE_DATA.linux64_release.file}.sig">[Sig]</a></p>
{/if}
    </p>
{else}
    <p><em>The GTK2 Tarball is not currently available. Please try again later.</em></p>
{/if}

    <h3>Other downloads</h3>

    Source code: see the source code page <a href="//www.palemoon.org/sourcecode.shtml" target="_blank">here</a>.<br />
    Older versions: <a href="//www.palemoon.org/archived.shtml" target="_blank">here</a>.</p>

    <p><strong>NOTE:</strong> Linux 32 bit binaries have been discontinued. However, your distribution (or one of the fantastic package contributors) may still offer 32 bit packages at their discretion. If they do you should remove the "generic" binary and install said package. Otherwise, to continue using the Pale Moon binaries we distribute, please update to a 64 bit distribution.</p>
{elseif $PAGE_TYPE == 'unstable'}
    <h1>Download Pale Moon for Linux unstable binaries</h1>
    <p>The unstable versions of Pale Moon come with recognizable unstable branding (a "blood moon") to clearly differentiate it from the official releases.</p>

    <h2>Download</h2>

    <p>The unstable version for Linux has been dicontinued and is no longer available. Please download the latest release version <a href="/download/mainline/">here</a>.</p>
{/if}
