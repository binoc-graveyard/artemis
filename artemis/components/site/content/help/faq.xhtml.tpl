<h1>{$PAGE_TITLE}</h1>

<h3>General</h3>

<ul>
    <li><a href="#pmnotwork">Pale Moon does not work on my computer!</a></li>
    <li><a href="#updater">The internal updater is not working!</a></li>
    <li><a href="#privateflag">The -private flag does not work in Pale Moon.</a></li>
    <li><a href="#html5vid">HTML5 videos do not work!</a></li>
</ul>

<h3>Installation</h3>

<h3>Profiles, plugins, extensions...</h3>

<ul>
    <li><a href="#whereisprofile">Where is the profile of Pale Moon located?</a></li>
    <li><a href="#noaccessprofile">Pale Moon cannot access my profile.</a></li>
    <li><a href="#noplugins">My plugins do not show up in Pale Moon.</a></li>
    <li><a href="#extensions">Extensions</a></li>
</ul>

<h3>Problems</h3>

<ul>
    <li><a href="#badmenuentry">Pale Moon's menu entry does not show up or work properly.</a></li>
    <li><a href="#clickandcrash">Pale Moon crashes if I try to click on any of the menus (File, Edit...)</a></li>
</ul>

<h3>Miscellaneous</h3>

<ul>
    <li><a href="#portable">Is there a portable version of Pale Moon for Linux?</a></li>
    <li><a href="#distropkg">Will there be a package for $distro?</a></li>
    <li><a href="#forum">Additional support</a></li>
</ul>

<hr/>
<h2>General</h2>

<p><strong id="pmnotwork">Pale Moon does not work on my computer!</strong></p>

<p>If Pale Moon refuses to work try starting it from the terminal and see what error messages are displayed. If you are not able to resolve the message that is provided, it is recommended you post the problem and error message(s) on the <a href="https://forum.palemoon.org/viewforum.php?f=37">forum</a>.

<p><strong id="updater">The internal updater is not working!</strong></p>

<p>Pale Moon ships with its own internal updater. However, in order for the updater to work properly Pale Moon must be extracted to a user-writable location. If the updater is reporting an update available but is not updating, please ensure that the "palemoon" directory is writable by your user account.</p>

<p><strong id="privateflag">The -private flag does not work in Pale Moon.</strong></p>

<p>The <em>-private</em> flag is designed in this way so as not to tell the user that Pale Moon is in private browsing mode. Try the <em>-private-window</em> flag instead.</p>

<p><strong id="html5vid">HTML5 videos do not work!</strong></p>

<p>Pale Moon requires FFmpeg (specifically the libavcodec component) to play HD H.264 videos. If you're having trouble getting HD HTML5 videos to play, please ensure that you have the libavcodec package installed on your system. Note that on some distros, you will need to install libavcodec from a "non-free" repo.</p>

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

<p><strong id="extensions">Extensions</strong></p>

<p>Pale Moon reads the standard Firefox directories for global extensions, thus extensions may be globally installed. Extensions may be extracted into <code>/usr/share/mozilla/extensions/</code> or for a specific user in <code>~/.mozilla/extensions</code></p>

<p>More details on extension compatibility can be found <a href="https://forum.palemoon.org/viewtopic.php?f=1&t=19727">here.</a></p>

<h2>Problems</h2>

<p><strong id="badmenuentry">Pale Moon's menu entry does not show up or work properly.</strong></p>

<ul>
    <li>If the icon does not appear, try updating the icon cache by running the following:</li>
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

<p>At this time there are no plans to provide packages for specific Linux distros. However, Pale Moon has been packaged for some specific distros by 3rd party maintainers and is included in several distro's repos. See the <a href="/">main page</a> for an officially endorsed list.</p>

<p><strong id="forum">Additional support</strong></p>

<p>For additional support, please head over to the <a href="https://forum.palemoon.org" target="_blank">forum</a>.</p>
