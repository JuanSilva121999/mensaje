<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%
            int contador = 0;
            Cookie[] cukis = request.getCookies();

            if (cukis != null) {
                for (Cookie c : cukis) {
                    if (c.getName().equals("Visitas")) {
                        contador = Integer.parseInt(c.getValue());
                    }
                }
            }
            contador++;
            Cookie c = new Cookie("Visitas", Integer.toString(contador));
            c.setMaxAge(30);
            response.addCookie(c);

            response.setContentType("text/html");
            %>
            <% if (contador == 1) {

            %>Bienvenido a nuetro sitio Web JASC Web
            <%} else {
             %>Gracias por visitarnos Nuevamente por <%= contador%>° vez
            <%
                }%></h1>
    </body>
</html>
