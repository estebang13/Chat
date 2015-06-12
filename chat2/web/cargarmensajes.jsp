
<%@page import="modelo.ChatBLL"%>
<%@page import="modelo.Mensaje"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <%
            for (Mensaje m : new ChatBLL().verMensajes()) {
                out.println("<b>" + m.getUsuario() + ":</b> " + m.getMensaje() + "<br><hr>");
            }
        %>
        <br><br>
        <div id="ultimo"></div>
    </body>
</html>
