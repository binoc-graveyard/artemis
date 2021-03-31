@charset "utf-8";
@font-face {
    font-family: 'ModernWakandan';
    src: url('{$BASE_PATH}ModernWakandanRegular.woff2') format('woff2'),
         url('{$BASE_PATH}ModernWakandanRegular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}

html {
  min-height: 100%;
}

body {
	margin-left: 0px;
	margin-top: 8px;
	margin-right: 0px;
	margin-bottom: 46px;
  font-family: "ModernWakandanRegular";
  font-style: normal;
  font-size: 12pt;
  letter-spacing: 0.3px;
  background-color: #7A98B5;
  background-image: linear-gradient(to bottom, #7598B9 0%, #A3B5CB 70%, #AFAABD 100%);
  background-repeat: no-repeat;
  background-attachment: fixed;
}

body,td,th {
  font-family: "ModernWakandanRegular";
  font-style: normal;
  font-size: 12pt;
  color: #000000;
  letter-spacing: 0.3px;
}

a, a:visited, a:active  {
  color: rgb(22, 54, 101);
}

a:hover {
  color: rgb(192, 19, 20);
}

/*
@media all and (min-width: 820px)  {
#PM-Wrapper {
  	width: 800px;
}
}

@media all and (min-width: 1220px) {
#PM-Wrapper {
  	width: 1200px;
}
}
*/
#PM-Wrapper {
  margin: 0 auto;
  border: 1px solid;
  border-color: #888888;
  text-align: left;
  min-width: 1192px;
  max-width: 1192px;
  box-shadow: 2px 2px 8px #333;
  border-radius: 9px;
  padding: 3px;
  background-color: rgba(249, 249, 249, 1);
  color: black;
}

#PM-Header {
  border-top-left-radius: 7px;
  border-top-right-radius: 7px;
  overflow: hidden;
  width: 100%;
  height: 148px;
  background: #dee6e8; /* Old browsers */
  background: url('{$BASE_PATH}PaleMoon-wak.png') no-repeat center right,
              url('{$BASE_PATH}sub-banner-wak.jpg') no-repeat top left;
}

#PM-Menubar {
  padding: 0pt;
  vertical-align: top;
  background-color: rgb(82, 114, 161);
  width: 100%;
  height: 29px;
}

#PM-Content {
    width: 100%;
    display: table;
    font-family: "ModernWakandanRegular";
    font-style: normal;
    font-size: 12pt;
    letter-spacing: 0.3px;
    vertical-align: top;
/*    animation: fadeEffect 0.5s; */
}

#PM-Content-Body {
    width: 100%;
    display: table-cell;
    vertical-align: top;
    padding-left: 8px;
    padding-right: 8px;
    padding-top: 8px;
    padding-bottom: 8px;
}

#PM-Content-Sidebar {
    min-width: 270px;
    width: 270px;
    height: 100%;
    display: table-cell;
    padding: 8px 10px 10px;
    vertical-align: top;
}

#PM-Content-Sidebar a, #PM-Content-Sidebar a:visited, #PM-Content-Sidebar a:hover {
    color: #00E;
}

@keyframes fadeEffect {
    from { opacity: 0; }
    to { opacity: 1; }
}

.fake-table {

}

.fake-table-row:nth-of-type(even) {
background: linear-gradient(to right, rgba(240,240,240,1) 50%,rgba(255,255,255,0) 100%);
}

.fake-table-row-search-plugin {
    width: 325px;
    height: 24px;
    display: inline-block;
    text-align: left;
    vertical-align: top;
    align: left;
    margin-left: 20px;
    margin-right: 20px;
    padding: 4px 8px;
    text-decoration: none;
    color: black;
}

.fake-table-row-search-plugin:hover {
    color: #004B97;
}

h1 {
  font-family: "ModernWakandanRegular";
  font-size: 20.5pt;
  color: #000066;
  margin: 0.5em auto;
}

h2.faq {
  background-color: #e0e0ff;
}

blockquote {
  background-color: #ffffcc;
  font-family: "ModernWakandanRegular";
  -moz-box-shadow: 1px 1px 2px #000;
  box-shadow: 1px 1px 2px #000;
  margin: 16px;
  padding: 4px;
}

pre {
  font-family: "Courier New",Courier,monospace;
  font-size: 14px;
  background-color: #f5f5f5;
  overflow-wrap: normal;
  width: 780px;
  }

code {
  font-family: "Courier New",Courier,monospace;
  font-size: 14px;
  display: block;
  padding: 10px;
  overflow: auto;
}

.hljs {
  background-color: #f5f5f5 !important;
}

  .alignleft {
	float:left;
	text-align:left;
	margin-right:10px;
}
.alignright {
	float:right;
	text-align:right;
	margin-left:10px;
}
.aligncenter {
	display:block;
	margin-left:auto;
	margin-right:auto;
}

hr {
display: none;
}

.dllink_green {
  border: 1px solid rgb(0, 153, 0);
  padding: 14px;
  background-color: rgb(153, 255, 153);
  font-family: "ModernWakandanRegular";
  color: black;
  text-decoration: none;
  border-radius: 9px;
}

.dllink_blue {
  border: 1px solid rgb(0, 0, 153);
  padding: 14px;
  background-color: rgb(153, 153, 255);
  font-family: "ModernWakandanRegular";
  color: black;
  text-decoration: none;
  border-radius: 9px;
}

/* pull-down mainmenu css */
.mainmenu{
	float: left;
	width: 100%;
	padding: 0;
	position: relative;
	z-index: 500;
	border: none;
}

.mainmenu ul {
	width: 100%;
	list-style: none;
	line-height: 1;
	color:#FFFFFF;
	background: #5272A1;
	padding: 0;
	margin: 0 0 0 0;
  filter:alpha(opacity=97);
  -khtml-opacity: 0.98;
  opacity: 0.98;
}

.mainmenu a, .mainmenu a:visited {
  display: block;
  font-family: "ModernWakandanRegular";
  font-size:11.5pt;
  font-style:normal;
  text-decoration:none;
  color: #FFFFFF;
  text-decoration: none;
  padding: 7px 1em;
  letter-spacing: 0.4px;
  opacity: 0.99;
}
.mainmenu ul ul a{
	width:100%;
	height:100%;
}
.mainmenu ul a{
	width:1%;
}

.mainmenu li  {
	float: left;
	margin:0;
	padding: 0;
}

.mainmenu ul li { float:left; position:relative; }
.mainmenu ul li a { white-space:nowrap; }
	
.mainmenu li ul {
  position: absolute;
  left: -999em;
  height: auto;
  width:15em;	

  background: #5272A1;
  font-weight: normal;
  border: 1px solid rgba(240,240,255,.5);
  margin: 0;
}

.mainmenu li li {
	width:15em;
}

.mainmenu li li a{
	width:13em;
}

.mainmenu li ul  {
	margin: 0;
}
.mainmenu li ul ul {
	margin: -1.5em 0 0 13.0em;
}
.ul_ch, 
.mainmenu li:hover ul ul,
.mainmenu li li:hover ul ul,
.mainmenu li li li:hover ul ul,
.mainmenu li li li li:hover ul ul,
.mainmenu li li li li li:hover ul ul
{
	left: -999em;
}
.mainmenu li:hover ul,
.mainmenu li li:hover ul,
.mainmenu li li li:hover ul,
.mainmenu li li li li:hover ul,
.mainmenu li li li li li:hover ul
{
	left: auto;
}
.mainmenu li:hover>ul.ul_ch   
{
	left: auto;
}

.mainmenu li:hover {
	background: #004B97;
}

.mainmenu li:hover a,.mainmenu li:hover a:visited,.mainmenu li:hover a:hover,.mainmenu li a:hover {
	color:#FFFBF0;
}
.mainmenu li:hover li a, .mainmenu li li:hover li a, 
.mainmenu li li li:hover li a, .mainmenu li li li li:hover li a,
.mainmenu li:hover li a:visited, .mainmenu li li:hover li a:visited, 
.mainmenu li li li:hover li a:visited, .mainmenu li li li li:hover li a:visited
{
	color:#FFFFFF;
}
.mainmenu li li:hover, .mainmenu li li li:hover, 
.mainmenu li li li li:hover , .mainmenu li li li li li:hover , .mainmenu li li li li li li:hover 
{
	background: #004B97;

}
.mainmenu li li:hover a,.mainmenu li li li:hover a, 
.mainmenu li li li li:hover a, .mainmenu li li li li li:hover a
{
	color: #FFFBF0; 
}

.mainmenu ul ul a, .mainmenu ul ul a:visited,
.mainmenu li li a, .mainmenu li li a:visited
{
	color: #FFFFFF;
}
.mainmenu ul ul a:hover,
.mainmenu li:hover li:hover a,.mainmenu li:hover li:hover a:visited ,
.mainmenu li:hover li:hover li:hover a,.mainmenu li:hover li:hover li:hover a:visited,
.mainmenu li:hover li:hover li:hover li:hover a,.mainmenu li:hover li:hover li:hover li:hover a:visited ,
.mainmenu li:hover li:hover li:hover li:hover li:hover a,.mainmenu li:hover li:hover li:hover li:hover li:hover a:visited,
.mainmenu li:hover li:hover li:hover li:hover li:hover li:hover a,.mainmenu li:hover li:hover li:hover li:hover li:hover li:hover a:visited {
	color: #FFFBF0;
}
.mainmenu li:hover li:hover li a,.mainmenu li:hover li:hover li a:visited ,
.mainmenu li:hover li:hover li:hover li a,.mainmenu li:hover li:hover li:hover li a:visited,
.mainmenu li:hover li:hover li:hover li:hover li a,.mainmenu li:hover li:hover li:hover li:hover li a:visited,
.mainmenu li:hover li:hover li:hover li:hover li:hover li a,.mainmenu li:hover li:hover li:hover li:hover li:hover li a:visited {
	color: #FFFFFF;
}

/* end of mainmenu css - change*/


