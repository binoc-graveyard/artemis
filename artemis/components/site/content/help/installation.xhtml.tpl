<h1>{$PAGE_TITLE}</h1>

<p>Installation, uninstallation and upgrades are normally managed with the <a href="/download/installer/">pminstaller</a> tool. If for any reason you prefer not to use the installer, you can use the instructions below to manually install Pale Moon instead.</p>

<h2>Manual method</h2>

<p>It should be noted that it is <strong>not</strong> necessary to install Pale Moon to use it. It is distributed as an bzipped tarball which can be extracted anywhere and then launched by executing the "palemoon" file inside it.
    <br/>
    <br/> These instructions below require you to first become superuser on the command line. This is generally done by typing sudo -s or su (depending on how your system is configured) in the terminal. If you want to perform a "local install" of Pale Moon, see the <a href="/help/faq/">FAQ</a>.</p>

<h3>Installation</h3>

<ul>
    <li>Uninstall all previous versions of Pale Moon, if any.</li>
    <li>Download the appropriate archive.</li>
    <li>Extract the archive into /opt:</li>
</ul>

<pre><code>tar -xvf <palemoon_archive> -C /opt</code></pre>

<ul>
    <li>Create a symbolic link /usr/bin/palemoon that points to /opt/palemoon/palemoon:</li>
</ul>

<pre><code>ln -s /opt/palemoon/palemoon /usr/bin/palemoon</code></pre>

<ul>
    <li>Create symbolic links for the icons in /usr/share/icons/hicolor:</li>
</ul>

<pre><code>ln -s /opt/palemoon/browser/chrome/icons/default/default16.png /usr/share/icons/hicolor/16x16/apps/palemoon.png
ln -s /opt/palemoon/browser/chrome/icons/default/default32.png /usr/share/icons/hicolor/32x32/apps/palemoon.png
ln -s /opt/palemoon/browser/chrome/icons/default/default48.png /usr/share/icons/hicolor/48x48/apps/palemoon.png
ln -s /opt/palemoon/browser/icons/mozicon128.png /usr/share/icons/hicolor/128x128/apps/palemoon.png</code></pre>

<ul>
    <li>If you are using a Debian (based) distro, you might want to inform update-alternatives about the presence of Pale Moon (and make it available as x-www-browser and gnome-www-browser). An arbitrary score of 100 has been used here, but you can adjust it according to your needs:</li>
</ul>

<pre><code>update-alternatives --install /usr/bin/gnome-www-browser gnome-www-browser /usr/bin/palemoon 100</code></pre>

<pre><code>update-alternatives --install /usr/bin/x-www-browser x-www-browser /usr/bin/palemoon 100</code></pre>

<ul>
    <li>If you want Pale Moon to use the dictionaries from hunspell, run the following:</li>
</ul>

<pre><code>rm -r /opt/palemoon/dictionaries</code></pre>

<pre><code>ln -s /usr/share/hunspell /opt/palemoon/dictionaries</code></pre>

<ul>
    <li>Make a menu entry by creating /usr/share/applications/palemoon.desktop in a text editor with the following contents:</li>
</ul>

<pre><code>[Desktop Entry]
Version=1.0
Name=Pale Moon Web Browser
Comment=Browse the World Wide Web
Keywords=Internet;WWW;Browser;Web;Explorer
Exec=palemoon %u
Terminal=false
X-MultipleArgs=false
Type=Application
Icon=palemoon
Categories=Network;WebBrowser;Internet
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;image/gif;image/jpeg;image/png;x-scheme-handler/http;x-scheme-handler/https;x-scheme-handler/ftp;x-scheme-handler/chrome;video/webm;application/x-xpinstall;
StartupNotify=true</code></pre>

<h3>Upgrades</h3>

<ul>
    <li>Delete the directory /opt/palemoon:</li>
</ul>

<pre><code>rm -rf /opt/palemoon</code></pre>

<ul>
    <li>Extract the contents of a newer Pale Moon archive to /opt:</li>
</ul>

<pre><code>tar -xvf <palemoon_archive> -C /opt</code></pre>

<p>If you want hunspell/hyphen integration, you need to rerun the commands stated in the "Installation" section at this point.</p>

<h3>Uninstallation</h3>

<ul>
    <li>Remove the file associations from each user account:</li>
</ul>

<pre><code>rm /home/*/.local/share/applications/userapp-Pale\ Moon-*.desktop /home/*/.local/share/applications/mimeinfo.cache</code></pre>

<ul>
    <li>If you used a Debian (based) distro and registered Pale Moon with update-alternatives, then remove it from the list of browsers maintained by it:</li>
</ul>

<pre><code>update-alternatives --remove gnome-www-browser /usr/bin/palemoon</code></pre>

<pre><code>update-alternatives --remove x-www-browser /usr/bin/palemoon</code></pre>

<ul>
    <li>Remove all Pale Moon related files:</li>
</ul>

<pre><code>rm -rf /usr/bin/palemoon /opt/palemoon /usr/share/applications/palemoon.desktop /usr/share/icons/hicolor/*/apps/palemoon.png</code></pre>