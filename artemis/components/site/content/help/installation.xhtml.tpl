<h1>{$PAGE_TITLE}</h1>

<p>It is <strong>not</strong> necessary to install Pale Moon to use it. It is distributed as an xz-compressed tarball which can be extracted anywhere and then launched by executing the "palemoon" file inside it. If for any reason you prefer to manually "install" Pale Moon, you can use the instructions below.</p>

<h2>Manual method</h2>

<p>These instructions below will extract Pale Moon to your home folder. You can extract Pale Moon to any other location by substituting you home folder with the path for the directory you want to extarct to. Please note that it is <strong>required that you extract to a user writable location in order for the internal updater to work</strong>!</p>

<h3>Installation</h3>

<ul>
    <li>Uninstall all previous versions of Pale Moon, if any.</li>
    <li>Download the appropriate archive.</li>
    <li>Extract the archive.</li>
</ul>

<pre><code>tar -xvf <palemoon_archive> -C ~/</code></pre>

<ul>
    <li>Create a symbolic link /usr/bin/palemoon that points to ~/palemoon/palemoon:</li>
</ul>

<pre><code>ln -s ~/palemoon/palemoon /usr/bin/palemoon</code></pre>

<ul>
    <li>Create symbolic links for the icons in /usr/share/icons/hicolor:</li>
</ul>

<pre><code>ln -s ~/palemoon/browser/chrome/icons/default/default16.png /usr/share/icons/hicolor/16x16/apps/palemoon.png
ln -s ~/palemoon/browser/chrome/icons/default/default32.png /usr/share/icons/hicolor/32x32/apps/palemoon.png
ln -s ~/palemoon/browser/chrome/icons/default/default48.png /usr/share/icons/hicolor/48x48/apps/palemoon.png
ln -s ~/palemoon/browser/icons/mozicon128.png /usr/share/icons/hicolor/128x128/apps/palemoon.png</code></pre>

<ul>
    <li>If you are using a Debian-based distro, you might want to inform update-alternatives about the presence of Pale Moon (and make it available as x-www-browser and gnome-www-browser). An arbitrary score of 100 has been used here, but you can adjust it according to your needs:</li>
</ul>

<pre><code>update-alternatives --install /usr/bin/gnome-www-browser gnome-www-browser /usr/bin/palemoon 100</code></pre>

<pre><code>update-alternatives --install /usr/bin/x-www-browser x-www-browser /usr/bin/palemoon 100</code></pre>

<ul>
    <li>If you want Pale Moon to use the dictionaries from hunspell, run the following:</li>
</ul>

<pre><code>rm -r ~/palemoon/dictionaries</code></pre>

<pre><code>ln -s /usr/share/hunspell ~/palemoon/dictionaries</code></pre>

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

<p> After creating the menu entry, you may need to run the following command to get the icon to appear:</p>

<pre><code>gtk-update-icon-cache -f /usr/share/icons/hicolor</code></pre>

<h3>Updates</h3>

<p>Updates are handled automatically by Pale Moon's own internal updater provided that Pale Moon was extracted to your home folder or any other location writable by your user account. If for some reason you want to update manually:</p>
<ul>
    <li>Delete the directory ~/palemoon:</li>
</ul>

<pre><code>rm -rf ~/palemoon</code></pre>

<ul>
    <li>Extract the contents of a newer Pale Moon archive to ~/:</li>
</ul>

<pre><code>tar -xvf <palemoon_archive> -C ~/</code></pre>

<p>If you want hunspell/hyphen integration, you need to rerun the commands stated in the "Installation" section at this point.</p>

<h3>Uninstallation</h3>

<ul>
    <li>Remove the file associations from each user account:</li>
</ul>

<pre><code>rm /home/*/.local/share/applications/userapp-Pale\ Moon-*.desktop /home/*/.local/share/applications/mimeinfo.cache</code></pre>

<ul>
    <li>If you used a Debian-based distro and registered Pale Moon with update-alternatives, then remove it from the list of browsers maintained by it:</li>
</ul>

<pre><code>update-alternatives --remove gnome-www-browser /usr/bin/palemoon</code></pre>

<pre><code>update-alternatives --remove x-www-browser /usr/bin/palemoon</code></pre>

<ul>
    <li>Remove all other Pale Moon related files:</li>
</ul>

<pre><code>rm -rf /usr/bin/palemoon ~/palemoon /usr/share/applications/palemoon.desktop /usr/share/icons/hicolor/*/apps/palemoon.png</code></pre>
