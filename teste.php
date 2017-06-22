<?php
$abrir = file_get_contents("/usr/lib/cgi-bin/codigo1.c" ,"r");
echo urldecode($abrir);
?>
