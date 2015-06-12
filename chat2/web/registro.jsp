<%-- 
    Document   : registro
    Created on : 11/06/2015, 08:59:45 PM
    Author     : gnome
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header></header>
        <form method="post" id="formuReg" action="registro">
            Nombre de Usuario:<br>
            <input type="text" name="nombre" id="nombre" required><br>
            Contraseña:<br>
            <input type="password" name="password" id="password" required><br>
            <input type="submit" value="Registrarse">
        </form>

    </body>
</html>
