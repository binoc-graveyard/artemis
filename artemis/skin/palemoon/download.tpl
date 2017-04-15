{if $PAGE_TYPE == 'mainline'}
<h1>Download Pale Moon for Linux Installer</h1>
<p>
    {$PAGE_DATA.linux-installer.file} <br />
    {$PAGE_DATA.linux-installer.version} <br />
    {$PAGE_DATA.linux-installer.size} <br />
    {$PAGE_DATA.linux-installer.hash} <br />
</p>
{elseif $PAGE_TYPE == 'mainline'}
<h1>Download Pale Moon for Linux release binaries</h1>
<p>
    {$PAGE_DATA.linux64-release.file} <br />
    {$PAGE_DATA.linux64-release.version} <br />
    {$PAGE_DATA.linux64-release.size} <br />
    {$PAGE_DATA.linux64-release.hash} <br />
</p>
<p>
    {$PAGE_DATA.linux32-release.file} <br />
    {$PAGE_DATA.linux32-release.version} <br />
    {$PAGE_DATA.linux32-release.size} <br />
    {$PAGE_DATA.linux32-release.hash} <br />
</p>
{elseif $PAGE_TYPE == 'unstable}
<h1>Download Pale Moon for Linux unstable binaries</h1>
<p>
    {$PAGE_DATA.linux64-unstable.file} <br />
    {$PAGE_DATA.linux64-unstable.version} <br />
    {$PAGE_DATA.linux64-unstable.size} <br />
    {$PAGE_DATA.linux64-unstable.hash} <br />
</p>
{/if}