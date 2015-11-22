#!/bin/bash

echo "Content-type: text/html"
echo ""
echo '<html>'
echo '<head>'
##echo '<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">'
echo '<meta charset="UTF-8"  http-equiv="refresh" content="3">'
echo '<title>Gerência de Dados</title>'
echo "<link rel="stylesheet" href="css.css" type="text/css">"
#echo '<style type="text/css">h2{background-color:#f00;}</style>'
echo '</head>'
#echo '<body bgcolor=#787878>'
echo '<h1 align=left id="section1" class="filter-drop-shadow" >Servidor: </h1><img align=right src=http://i.imgur.com/Cke7ULI.png?1 class="filter-drop-shadow">'
echo "<pre align=left class="filter-drop-shadow"><h5 style=color:white;>"
echo "$hostname"
echo "$(free -m)"
#echo "<br>"
echo "$(df -h)"
#echo "<br>"
echo "$w"
echo "$(date +"%a-%T-%d/%m/%Y")"
echo "</h5></pre>"
#echo "<img src=http://i.imgur.com/GrkOQQq.png?1></img>"
ping -c 1 192.168.1.111 &> /dev/null && test="1"  || test="0"
#echo "seu resultado: "$test
if [ "$test" = 1 ]
then
        echo "<h1 id="section1" style=color:#505050 class="filter-drop-shadow">Status<br><h1 id="section1" class="filter-drop-shadow">10.0.0.201:</h1><p class="filter-drop-shadow" style=color:green;>On</p></h1>"
else
        echo "<h1 id="section1" style=color:#505050 class="filter-drop-shadow">Status<br><h1 id="section1" class="filter-drop-shadow"10.0.0.18: </h1><p class="filter-drop-shadow" style=color:red;>Off</p></h1>"
fi
echo "<img class="filter-drop-shadow" src=switch1.png></img>"

echo '</body>'
echo '</html>'




#echo "<body>"

#ping -c 1 192.168.1.111 &> /dev/null && test="1"  || test="0"
#echo "seu resultado: "$test
#if [ "$test" = 1 ]
#then
 #       echo "<h1 id="section1">Status 10.0.0.8: <p style=color:green;>On</p></h1>"
#else
 #       echo "<h1 id="section1">Status 10.0.0.8: <p style=color:red;>Off</p></h1>"
#fi
#echo "<img src=http://i.imgur.com/xOCzDRm.png?1></img>"
#echo "</body>"
exit 0
