{if $PAGE_TYPE == 'installer'}
<h1>Download Pale Moon for Linux Installer</h1>
<p>
    {$PAGE_DATA.linux_installer.file} <br />
    {$PAGE_DATA.linux_installer.version} <br />
    {$PAGE_DATA.linux_installer.displaySize} <br />
    {$PAGE_DATA.linux_installer.hash} <br />
</p>
{elseif $PAGE_TYPE == 'mainline'}
<h1>Download Pale Moon for Linux release binaries</h1>
<p>
    {$PAGE_DATA.linux64_release.file} <br />
    {$PAGE_DATA.linux64_release.version} <br />
    {$PAGE_DATA.linux64_release.displaySize} <br />
    {$PAGE_DATA.linux64_release.hash} <br />
</p>
<p>
    {$PAGE_DATA.linux32_release.file} <br />
    {$PAGE_DATA.linux32_release.version} <br />
    {$PAGE_DATA.linux32_release.displaySize} <br />
    {$PAGE_DATA.linux32_release.hash} <br />
</p>
{elseif $PAGE_TYPE == 'unstable'}
<h1>Download Pale Moon for Linux unstable binaries</h1>
<p>
    {$PAGE_DATA.linux64_unstable.file} <br />
    {$PAGE_DATA.linux64_unstable.version} <br />
    {$PAGE_DATA.linux64_unstable.displaySize} <br />
    {$PAGE_DATA.linux64_unstable.hash} <br />
</p>
{/if}