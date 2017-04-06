<h1>{$PAGE_TITLE}</h1>

<h3>General</h3>

<ul>
	<li><a href="#privateflag">The -private flag does not work in Pale Moon.</a></li>
	<li><a href="#html5vid">Some HTML5 videos do not work!</a></li>
</ul>

<h3>Installation</h3>

<ul>
	<li><a href="#pmnotwork">Pale Moon does not work on my computer!</a></li>
	<li><a href="#install4self">Can I install Pale Moon for myself only?</a></li>
</ul>

<h3>Profiles, plugins, extensions...</h3>

<ul>
	<li><a href="#whereisprofile">Where is the profile of Pale Moon located?</a></li>
	<li><a href="#noaccessprofile">Pale Moon cannot access my profile.</a></li>
	<li><a href="#noplugins">My plugins do not show up in Pale Moon.</a></li>
	<li><a href="#flash">Installing Flash</a></li>
	<li><a href="#extensions">Extensions</a></li>
</ul>

<h3>Problems</h3>

<ul>
	<li><a href="#badmenuentry">Pale Moons menu entry does not show up or work properly.</a></li>
	<li><a href="#clickandcrash">Pale Moon crashes if I try to click on any of the menus (File, Edit...)</a></li>
</ul>

<h3>Miscellaneous</h3>

<ul>
	<li><a href="#portable">Is there a portable version of Pale Moon for Linux?</a></li>
	<li><a href="#distropkg">Will there be a package for $distro?</a></li>
	<li><a href="#updater">Pale Moon does not have an internal updater!</a></li>
</ul>

<hr/>
<h2>General</h2>

<p><strong id="privateflag">The -private flag does not work in Pale Moon.</strong></p>

<p>The <em>-private</em> flag is designed in this way so as not to tell the user that Pale Moon is in private browsing mode. Try the <em>-private-window</em> flag instead.</p>

<p><strong id="html5vid">Some HTML5 videos do not work!</strong></p>

<p>Pale Moon currently uses GStreamer 1.x to play HD H.264 video. If some HTML5 videos don't play, ensure that you have the gstreamer1-good-plugins and gst-libav installed on your system.</p>

<h2>Installation</h2>

<p><strong id="pmnotwork">Pale Moon does not work on my computer!</strong></p>

<p>Please run it from the terminal and see what error message you get.<br/>
If you get:</p>

<ul>
	<li><code>palemoon: No such file or directory</code> Make sure you downloaded the correct architecture for your OS. To determine the OS architecture, type <code>uname -m</code> in the terminal.</li>
	<li>(other errors) - Check whether you meet the <a href="/#systemreqs">system requirements</a>.</li>
</ul>

<p><strong id="install4self">Can I install Pale Moon for myself only?</strong></p>

<p>Yes, it is possible to do so. Follow the manual installation method in the <a href="installation">installation instructions</a>, and extract the archive to somewhere in your home directory (instead of /opt), and make the menu entry in ~/.local/share/applications. Adjust the additional locations mentioned in the instructions accordingly.</p>

<h2>Profiles, plugins, extensions...</h2>

<p><strong id="whereisprofile">Where is the profile of Pale Moon located?</strong></p>

<p>It is located in <code>~/.moonchild productions/pale moon</code> (note the spaces).</p>

<p><strong id="noaccessprofile">Pale Moon cannot access my profile.</strong></p>

<p>Failure to read the profile can happen due to two reasons:</p>

<ul>
	<li>A corrupted profile</li>
</ul>

<p>In the case of a corrupted profile, check your profile folder for correct paths in the <em>profile.ini</em> file.</p>

<ul>
	<li>No read/write permissions</li>
</ul>

<p>Run the following in the terminal:</p>

<pre>
    sudo chown -hR $USER: ~/.moonchild productions
    chmod -R +rw ~/.moonchild productions
</pre>

<p><strong id="noplugins">My plugins do not show up in Pale Moon.</strong></p>

<p>Pale Moon checks for plugins in /usr/lib/mozilla/plugins. Some distros place the plugins in /usr/lib/nsbrowser/plugins. If this is the case and Pale Moon is unable to find your plugins, you can do the following to symlink to the actual plugin directory:</p>

<pre>cd /usr/lib
mkdir mozilla
cd mozilla
ln -s ../nsbrowser/plugins plugins</pre>

<p>If instead you need to put your plugins in a custom location, you can export MOZ_PLUGIN_PATH=<path1>:<path2>...<br/>
<br/>
You can also put these export statements in /etc/profile, should you need them to work for all users.</p>

<p><strong id="flash">Installing Flash</strong></p>

<p>It is preferable to install Flash from your distros official repositories if possible. Sometimes a "non-free" branch must be enabled in the package management tool to get closed source software through the repositories.<br/>
<br/>
To install it from the GZIP file available at <a href="https://www.adobe.com/products/flashplayer/distribution3.html">Adobes Flash Player distribution page</a>, copy the contents of /usr directory in the archive to the systems /usr and the libflashplayer.so to /usr/lib/mozilla/plugins.</p>

<p><strong id="extensions">Extensions</strong></p>

<p>Pale Moon reads the standard Firefox directories for global extensions, thus extensions may be globally installed. Extensions may be extracted into <code>/usr/share/mozilla/extensions/</code> or, for a specific user, in <code>~/.mozilla/extensions</code></p>

<p>It should be noted that Pale Moon is equivalent to Firefox 24 ESR from an extension compatibility point-of-view, although due to the unique GUID of the browser, some extensions may not work. More details can be found <a href="https://forum.palemoon.org/viewtopic.php?f=24&t=8740">here.</a></p>

<h2>Problems</h2>

<p><strong id="badmenuentry">Pale Moons menu entry does not show up or work properly.</strong></p>

<ul>
	<li>If the icon does not appear, update the icon cache by running the following:</li>
</ul>

<pre>
    sudo gtk-update-icon-cache -f /usr/share/icons/hicolor
</pre>

<ul>
	<li>With some window managers you will have to run a command to update the menu entry. Please refer to the help pages and manuals for your window manager.</li>
</ul>

<ul>
	<li>If the menu entry tries to open "www.%u.com", then your window manager/desktop environment is not compliant with the freedesktop.org standards. A workaround would be to use <code>Exec=palemoon</code> instead of <code>Exec=palemoon %u</code> in the menu entry file.</li>
</ul>

<ul>
	<li>If the menu entry appears across multiple categories, then your window manager does not see the multiple categories as a priority preference. A workaround would be to use <code>Categories=<desired_category></code> instead of <code>Categories=<category1>,...</code> in the menu entry.</li>
</ul>

<p><strong id="clickandcrash">Pale Moon crashes if I try to click on any of the menus (File, Edit...)</strong></p>

<p>This is not a Pale Moon problem, but rather a known bug with some versions of the "oxygen-gtk" theme. More details are <a href="https://forum.palemoon.org/viewtopic.php?f=37&t=4151">here</a>. The proper solution is to change to a different theme, or upgrade/downgrade oxygen-gtk theme to a known-working version (1.4.2 should work).</p>

<p>Note that on July 18th, 2015 the bug was finally fixed by the KDE developers, however this will likely continue to be an issue until the patch lands in distro repos. More details are <a href="https://forum.palemoon.org/viewtopic.php?f=37&t=8871">here</a>.</p>

<h2>Miscellaneous</h2>

<p><strong id="portable">Is there a portable version of Pale Moon for Linux?</strong></p>

<p>A Windows "PortableApps" style application is not possible due to filesystem permission restrictions on Linux.</p>

<p>However, if you mean "portable" as in no installation needed, Pale Moon for Linux is already in such a state! Just grab the archive you want, extract it anywhere you like and run the "palemoon" file.</p>

<p><strong id="distropkg">Will there be a package for $distro?</strong></p>

<p>At this time there are no plans to provide packages for specific Linux distros. In most cases, the <a href="/download/installer/">pminstaller tool</a> can perform any needed installation, uninstallation and update functions.</p>

<p>However, Pale Moon has been made available for and is included in several distro's repos. See the <a href="/">main page</a> for a list.</p>

<p>If you are interested in creating and maintaining packages for a specific distro, please let us know on the <a href="https://forum.palemoon.org/viewforum.php?f=37">forum</a>!</p>

<p><strong id="updater">Pale Moon does not have an internal updater!</strong></p>

<p>The <a href="/download/installer/">pminstaller tool</a> has a built-in updater, however this results in a full download. There is no internal updater built into Pale Moon for Linux at this time. This is by design:</p>

<ul>
	<li>The internal updater requires making mar archives and/or binary diffs, which is not done at this time, but is on the roadmap and we are going to look into it at some point.</li>
	<li>Most users are likely to install it into /opt which is unreadable to most except the superuser, and running the browser as superuser is not considered proper security practice.</li>
</ul>