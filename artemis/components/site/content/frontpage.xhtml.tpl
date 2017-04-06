<h1>Pale Moon for Linux</h1>

<p>Pale Moon is an Open Source Goanna-based web browser completely built from its own, independently developed source that was forked off from Firefox/Mozilla code a number of years ago, and focuses on efficiency and ease of use by carefully selecting features and optimizations to improve the browser's stability and user experience, while offering full customization and a growing collection of <a href="//addons.palemoon.org/" target="_blank">extensions</a> and <a href="//addons.palemoon.org/themes/" target="_blank">themes</a> to make the browser truly your own.<br>
<br>
This browser, even though fairly close to Gecko-based browsers like Mozilla Firefox in how it works, is based on a different layout engine and offers a different set of features. It aims to provide close adherence to official web standards and specifications in its implementation (with minimal compromise), and purposefully excludes a number of features to strike a good balance between general use, performance, and technical advancements on the Web.<br>
<br>
For additional information, check out the main site at <a href="//www.palemoon.org" target="_blank">//www.palemoon.org.</a><br>
For support, check out the forum at <a href="https://forum.palemoon.org" target="_blank">https://forum.palemoon.org</a>.</p>

<h3>Installation:</h3>

<p>Installation, uninstallation and upgrades are normally managed with the <a href="/web/20170319043824/http://linux.palemoon.org/download/installer/">Pale Moon for Linux installer</a>. However, you can also download Pale Moon for Linux as a <a href="/web/20170319043824/http://linux.palemoon.org/download/mainline/">bzipped tarball</a> that can be extracted and run from any location on your system.</p>

<p>You can also install one of these fully-endorsed third-party builds of Pale Moon for Linux:</p>

<ul>
        <li><a href="https://forum.palemoon.org/viewtopic.php?f=40&t=13530">Pale Moon for Linux - SSE-only build</a> -- Maintained by Walter Dnes</li>
        <li><a href="https://software.opensuse.org/download.html?project=home=stevenpusser&package=palemoon">Pale Moon repositories for Debian and Ubuntu</a> -- maintained by Steve Pusser</li>
        <li><a href="http://www.kovacsoltvideo.hu/moonchildproductions">Pale Moon and FossaMail repacks for Ubuntu and Debian</a> -- maintained by László Kovács</li>
</ul>

<p>Additionally, Pale Moon is included in and can be installed directly from the default repositories of the following distros:</p>

<ul>
        <li>Manjaro</li>
        <li>PCLinuxOS</li>
        <li>Puppy Linux</li>
        <li>MEPIS/MX-15</li>
        <li>Arch User Repository (AUR)</li>
        <li>Gentoo Overlays</li>
        <li>Slackbuilds</li>
</ul>

<h3>Linux system requirements</h3>

<p>The mainline build of Pale Moon requires a processor which supports the SSE2 instruction set, and will not run on processors that do not support it.</p>
<p>To check if your processor supports SSE2, type the following into the terminal: <code>grep -om1 sse2 /proc/cpuinfo</code></p>
<p>If <em>sse2</em> is displayed, then your processor is supported. If there is no output, your processor does not support SSE2 and you will need the SSE-only contributed build listed above. 

</p><p>Pale Moon will not run at all without (reasonably updated versions of) the following dependencies:</p>

<ul>
	<li>GTK+ v2.24</li>
	<li>GLibc v2.17</li>
	<li>Pango</li>
	<li>X.Org</li>
	<li>libstdc++ 4.3</li>
</ul>