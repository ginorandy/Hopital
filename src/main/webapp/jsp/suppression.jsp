<%-- 
    Document   : suppression
    Created on : 1 déc. 2016, 12:29:08
    Author     : Randy
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="hopital.Fonction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try
            {
                Fonction f=new Fonction();
                int id=Integer.parseInt(request.getParameter("id"));
                f.supprimer(id);
                response.sendRedirect("../pages/recherche.jsp");
            }
            catch(Exception e)
            {
                if(e instanceof SQLException)
                {
                    response.sendRedirect("../pages/facture.jsp");
                }
            }
                
            
        %>
    </body>
</html>
