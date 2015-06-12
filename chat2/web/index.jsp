
<%@page import="Entidades.Mensaje"%>
<%@page import="BLL.ChatBLL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="Sesion.Sesiones"%>

<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <title>Chat Mesinger</title>
        <title>Chat Mesinger</title>
        <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
        <script type="text/javascript" src="js/jquery.scrollTo.js"></script>
        <link href="css/jquery-ui-1.8.19.custom.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="js/funciones.js"></script>
        <link href="style.css" rel="stylesheet" type="text/css">
    </head>
    <%
        Sesiones.comprobarUsuario(request.getSession().getAttribute("userId").toString());
    %>
    <body>
        <div id="container">
            <header>
                Bienvenido <%= request.getSession().getAttribute("userId").toString()%><br>
                <% if (!request.getSession().getAttribute("userId").equals("Invitado")) {
                        out.println("<a href='salir.jsp' style='color:red; font-size:14px;'>Salir</a>");
                    }%>
            </header>

            <nav>
                <ul>
                    <% if (request.getSession().getAttribute("userId").equals("Invitado")) { %>
                    <li><a href="login1.jsp" id="btnIngresar" >Ingresar</a></li>
                    <li><a href="registro.jsp" id="btnRegistrarse">Registrarse</a></li>
                        <% } else { %>
                    <li><a  id="btnIngresar2">Ingresar</a></li>
                    <li><a id="btnRegistrarse2">Registrarse</a></li>
                        <% }%>
                </ul>
            </nav>
            <section id="chat" class="limpiar">
                <section id="ventanaConversacion">
                    <h2>Conversación Chat</h2>
                    <div id="ventanaConversacionInt">
                    </div>
                    <section id="enviarMensaje">
                        <% if (!request.getSession().getAttribute("userId").equals("Invitado")) { %>
                        <textarea  id="txtMensaje" required placeholder="Escriba su mensaje..."></textarea>
                        <div id="enviarMSJ">Enviar!</div>
                        <% } else { %>
                        <textarea  id="txtMensaje" disabled required placeholder="Usted no puede enviar mensajes..."></textarea>
                        <div id="noEnviar">Enviar!</div>
                        <% }%>
                    </section>
                </section>
                <section id="ventanaUsuarios">
                    <h4>Usuarios Online</h4>
                    <div id="usersOnline">
                    </div>
                </section>
            </section>
            <footer>
            </footer>
        </div>
    </body>
</html>

