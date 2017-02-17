<%-- 
    Document   : inserer
    Created on : 27 oct. 2016, 11:38:35
    Author     : ITU
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="hopital.Fonction"%>
<%@page import="hopital.Medecins"%>
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
            String nom = request.getParameter("name");
            String sexe = request.getParameter("sexe");
            
            String d = request.getParameter("date_nais");
            
            //String d = request.getParameter("date_nais");
            
            String mart = request.getParameter("mart");
            String adresse = request.getParameter("adresse");
            String mail = request.getParameter("email");
            String contact = request.getParameter("phone");
            
            int occup = Integer.parseInt(request.getParameter("poste"));
            f.insert_employe(nom,sexe,d,mart,adresse,mail,contact,occup);
            response.sendRedirect("../pages/accueil.jsp");
        %>
    </body>
</html>
