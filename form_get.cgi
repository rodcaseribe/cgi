#!/bin/bash

echo 'Content-type: text/html'
echo
echo -e '<html>
<body>
<form method="GET">
USUARIO: <input type="text" name="login">
<br>
SENHA: <input type="password" name="senha">
<input type="submit" name="submit" value="Enviar">
</form>
</body>
</html>
'
