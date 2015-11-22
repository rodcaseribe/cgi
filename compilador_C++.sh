#!/bin/bash

read POST
CODE=$(echo $POST | cut -d '&' -f 1 | cut -d '=' -f 2)
#CODE=$(echo $POST)
echo 'Content-Type: text/html; charset=utf-8'
echo
echo  -e '<html>
<body bgcolor=#00FF66>'
echo "<h1>Compilador:</h1>"
echo -e 'Code C++:
<form method="POST">
<textarea name="code" rows="10" cols="40"></textarea>
<br>
<input type="submit" name="submit" value="Enviar" >
</form>'
echo '<pre>'
##echo '<?php urldecode($CODE)  ?>'
##echo $CODE | sed -e's/%\([0-9A-F][0-9A-F]\)/\\\\\x\1/g' | xargs echo -e
##echo -e "${CODE//%/\\x}"
##php $xxx = urldecode($CODE);
echo $CODE > codigo1.c
php teste.php > codigopronto.c
#cat codigopronto.c
gcc codigopronto.c -o codigopronto
./codigopronto 
#./kkk
##gcc --help
echo '</pre>'
echo '
</body>
</html>
