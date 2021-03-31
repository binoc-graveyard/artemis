<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
        <title>{$SITE_NAME} - {$PAGE_TITLE}</title>
        <link rel="icon" href="/favicon.ico" />
        <style type="text/css">
            {%SITE_STYLESHEET}
        </style>
        <script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/8.4/highlight.min.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>
    </head>
    <body>
        <div id="PM-Wrapper">
            <div id="PM-Header" class="PM-Wrapper-Width"></div>
            <div id="PM-Menubar" class="mainmenu">
            <span class="alignleft">
                <ul>
                    <li class="li_hc">
                        <a href="#" target="_self">Main</a>
                        <ul class="ul_ch">
                            <li class="li_nc"><a href="http://www.palemoon.org/" target="_self">Pale Moon homepage</a></li>
                            <li class="li_nc"><a href="http://start.palemoon.org/" target="_self">Pale Moon Start page</a></li>
                            <li class="li_nc"><a href="/" target="_self">Pale Moon for Linux site</a></li>
                        </ul>
                    </li>
                    <li class="li_nc">
                        <a href="#" >Information</a>
                        <ul class="ul_ch">
                            <li class="li_nc"><a href="//www.palemoon.org/releasenotes.shtml" target="_blank">Pale Moon Release notes</a>
                            </li>
                            <li class="li_nc"><a href="//www.palemoon.org/donations.shtml" target="_blank">Donations and Support</a>
                            </li>
                        </ul>
                    </li>
                    <li class="li_hc">
                        <a href="#">Download</a>
                        <ul class="ul_ch">
                            <li class="li_nc">
                                <a href="#">Pale Moon for Linux ></a>
                                <ul class="ul_ch">
                                    <li class="li_nc"><a href="/download/mainline/">Mainline binaries</a></li>
                                    <li class="li_nc"><a style="color: rgb(234, 160, 153);" href="/download/unstable/"><small><small>[DEV]</small></small> Unstable versions</a></li>
                                </ul>
                            </li>
                            <li class="li_nc"><a href="//addons.palemoon.org/language-packs/" target="_blank">Language Packs</a></li>
                            <li class="li_nc"><a href="//www.palemoon.org/archived.shtml" target="_blank">Archived versions</a></li>

                        </ul>
                    </li>
                    <li class="li_nc">
                        <a href="#" >Help</a>
                        <ul class="ul_ch">
                            <li class="li_nc"><a href="https://forum.palemoon.org/viewforum.php?f=37" target="_blank">Forum</a>
                            </li>
                            <li class="li_nc"><a href="/help/faq/">F.A.Q.</a>
                            </li>
                            <li class="li_nc"><a href="/help/installation/">Manual Installation</a>
                            </li>
                            <li class="li_nc"><a href="http://developer.palemoon.org/Developer_Guide:Build_Instructions/Pale_Moon/Linux" target="_blank">Build Pale Moon yourself</a>
                            </li>
                        </ul>
                    </li>
                 </ul>
            </span>
            <span class="alignright" style="margin-top: 2px; margin-right: 15px;">
            </span>
            </div>
            <div id="PM-Content">
                <div id="PM-Content-Body">
                    {%PAGE_CONTENT}
                </div>
            </div>
            <div style="margin-top: 10px; text-align: center; line-height: 13px; font-size: 10px;">
                <p><span style="color: rgb(102, 102, 102);">
                    Site design and Branding &copy; {'Y'|date} <a href="http://www.moonchildproductions.info/" target="_blank">Moonchild Productions</a> - All rights reserved
                </span><br />
                <span style="color: rgb(102, 102, 102);">
                    Any other content, brand names or logos are copyright or trademark to their respective owners.
                </span><br />
                <span style="color: rgb(102, 102, 102);">
                    Policies: <a href="//www.palemoon.org/policies/cookies.shtml">Cookies</a> - <a href="//www.palemoon.org/policies/usercontent.shtml">User Content</a>
                    - <a href="//www.palemoon.org/policies/privacy.shtml">Privacy</a>.
                </span></p>
                <p><span style="color: rgb(102, 102, 102);">
                    The Pale Moon for Linux Site is powered by <a href="#" target="_blank">Project Artemis</a> {$ARTEMIS_VERSION}.
                </span></p>
            </div>
        </div>
    </body>
</html>
