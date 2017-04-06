<?php
if (!(strcmp($_GET['a'], "i686") && strcmp($_GET['a'], "x86_64")))
{
	header("HTTP/1.1 302 Moved");
	//header("Location: http://".$_SERVER['HTTP_HOST']."/pm4linux/files/".$_GET['v']."/palemoon-".$_GET['v'].".en-US.linux-".$_GET['a'].".tar.bz2");
	header("Location: http://linux.palemoon.org/datastore/temp/palemoon-".$_GET['v'].".en-US.linux-".$_GET['a'].".tar.bz2");
}
else
{
	header("HTTP/1.1 400 Bad Request");
}
?>