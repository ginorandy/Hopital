<%-- 
    Document   : valider
    Created on : 20 oct. 2016, 09:53:27
    Author     : ITU
--%>

<%@page import="hopital.Fonction"%>
<%@page import="hopital.Mapping"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Valider</title>
    </head>
    <body>
        <%
            Mapping m=new Mapping();
            m.setNom(request.getParameter("user"));
            m.setPass(request.getParameter("pass"));
            Fonction f=new Fonction();
            int status=f.select(m);
            System.out.println(status);
            if(status>0)
            {
                out.println("ok");
                response.sendRedirect("../pages/accueil.jsp");
            }
            else
            {
                out.println("no");
                response.sendRedirect("../index.jsp");
            }
        %>
    </body>
</html>
