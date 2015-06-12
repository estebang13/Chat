<%-- 
    Document   : login1
    Created on : 11/06/2015, 08:59:31 PM
    Author     : gnome
--%>

<%@page import="modelo.Usuario"%>
<%@page import="modelo.ChatBLL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="chatStyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    </head>
    <body>
        <header></header>
        <form id="form1" method="post" action="login">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Ingresar</h3>
                </div>
            </div>
            <div class="panel-body">
                Ingrese con su nombre y contraseña
                <br />
                <br />

                <div class="input-group input-group-sm">                            
                    <span class="input-group-addon" id="sizing-addon3">Usuario:</span>
                    <input type="text" id="nombre" name="nombre" class="form-control" placeholder="Ingrese su nombre de usuario" aria-describedby="sizing-addon3">
                </div>
                <br />

                <div class="input-group input-group-sm">
                    <span class="input-group-addon" id="sizing-addon3">Contraseña</span>
                    <input type="password" id="password" name="password" class="form-control" aria-describedby="sizing-addon3">
                </div>
                <br />

                <div class="btn-group">
                    <button type="submit" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        Login
                    </button>

                </div>
            </div>

        </form>
    </body>
</html>
