<%-- 
    Document   : modification
    Created on : 1 déc. 2016, 11:39:50
    Author     : Randy
--%>

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
            Fonction f=new Fonction();
            int id=Integer.parseInt(request.getParameter("id"));
            String nom = request.getParameter("name");
            String sexe = request.getParameter("sexe");
            
            //String d = request.getParameter("date_nais");
            String adresse = request.getParameter("adresse");
            String mail = request.getParameter("email");
            String contact = request.getParameter("phone");
            
            int occup = Integer.parseInt(request.getParameter("poste"));
            f.modifier_patient(occup,id);
            response.sendRedirect("../pages/recherche.jsp");
        %>
    </body>
</html>
