<h1>Pale Moon for Linux</h1>

<p>Pale Moon is an Open Source, Goanna-based web browser completely built from its own, independently developed source that has been forked off from Firefox/Mozilla code a number of years ago, and focuses on efficiency and ease of use by carefully selecting features and optimizations to improve the browser's stability and user experience, while offering full customization and a growing collection of <a href="//addons.palemoon.org/" target="_blank">extensions</a> and <a href="//addons.palemoon.org/themes/" target="_blank">themes</a> to make the browser truly your own.<br>
<br>
This browser, even though fairly close to Gecko-based browsers like Mozilla Firefox and SeaMonkey in how it works, is based on a different layout engine and offers a different set of features. It aims to provide close adherence to official web standards and specifications in its implementation (with minimal compromise), and purposefully excludes a number of features to strike a good balance between general use, performance, and technical advancements on the Web.<br>
<br>
For additional information, check out the main site <a href="//www.palemoon.org" target="_blank">here</a>.<br>
For support, check out the forum <a href="https://forum.palemoon.org" target="_blank">here</a>.</p>

<h3>Installation:</h3>

<p>Installation, uninstallation and updates can be managed using the <a href="/download/installer/">pminstaller tool</a>. You can also download Pale Moon for Linux as a <a href="/download/mainline/">bzipped tarball</a> that can be extracted and run from any location on your system.</p>

<p>Additionally, you can install one of these fully-endorsed third-party builds of Pale Moon for Linux:</p>

<ul>
        <li><a href="https://software.opensuse.org/download.html?project=home:stevenpusser&package=palemoon" target="_blank">Pale Moon repositories for Debian and Ubuntu</a> -- maintained by Steve Pusser</li>
        <li><a href="http://repo.khronosschoty.org/Slackware/Pale-Moon/" target="_blank">Pale Moon SlackBuild packages</a> -- maintained by khronosschoty</li>
        <li><a href="http://www.kovacsoltvideo.hu/moonchildproductions" target="_blank">Pale Moon repacks for Ubuntu and Debian</a> -- maintained by László Kovács</li>
        <li><a href="https://forum.palemoon.org/viewtopic.php?f=40&t=13530" target="_blank">Pale Moon for Linux - SSE-only build</a> -- maintained by Walter Dnes</li>
</ul>

<p>Pale Moon can also be installed directly from the default repositories of the following distros:</p>

<ul>
        <li>Manjaro</li>
        <li>PCLinuxOS</li>
        <li>Puppy Linux</li>
        <li>MEPIS/MX-15</li>
        <li>Gentoo Overlays</li>
        <li>Slackbuilds</li>
</ul>

<h3>Linux system requirements</h3>

<p>The mainline build of Pale Moon is specifically optimized for modern processers that support the SSE2 instruction set and will not run on older processors lacking SSE2 support.</p>
<p>If you are unsure if your processor supports SSE2, you can enter the following command into a terminal: <code>grep -om1 sse2 /proc/cpuinfo</code></p>
<p>If <em>sse2</em> is displayed, then your processor is supported. If no output is displayed, your processor does not support SSE2 and the mainline build will not work. In this case, you will need to use the SSE-only contributed build listed above. 

</p><p>Pale Moon will not run at all without (reasonably updated versions of) the following dependencies:</p>

<ul>
	<li>GTK+ v2.24</li>
	<li>GLibc v2.17</li>
	<li>Pango</li>
	<li>X.Org</li>
	<li>libstdc++ 4.3</li>
</ul>
