#!/bin/bash

read POST
IP=$(echo $POST | cut -d '&' -f 1 | cut -d '=' -f 2)

echo 'Content-type: text/html'
echo
echo  -e '<html>
<body>'
echo "<h1>Consultando o IP: $IP</h1>"
echo -e '
<form method="POST">
IP: <input type="text" name="ip">
<br>
<input type="submit" name="submit" value="Enviar">
</form>'
echo '<pre>'
nmap $IP .1
echo '</pre>'
echo '
</body>
</html>
'
