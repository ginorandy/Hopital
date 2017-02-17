<%-- 
    Document   : insert_medic
    Created on : 10 déc. 2016, 17:20:59
    Author     : Randy
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="hopital.*"%>
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
            Articles a = new Articles();
            PrixA pa=new PrixA();
            PrixH ph=new PrixH();
            
           
            String prix= request.getParameter("prix_me");
            int categ=Integer.parseInt(request.getParameter("categorie"));
            double pd = Double.parseDouble(prix);
            
            Date d=null;
            String daty=f.formatDate(request.getParameter("date_me"));
            SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd");
            d = sdf.parse(daty);
            
            a.setNom(request.getParameter("medicament"));
            a.setId_categorie(categ);
            pa.setPrix(pd);
            pa.setDate_p(d);
            ph.setPrix(pd);
            ph.setDate_h(d);
            
            f.insert_articles(a);
            
            Connection conexion;
            connexion connection=new connexion();
            connection.connect();
        
            conexion=connection.getConnexion();
            Statement stmt=conexion.createStatement();
            String req="select max(id_article) as id from article";
            ResultSet rs=stmt.executeQuery(req);
            rs.next();
            ph.setId_article(rs.getInt("id"));
            pa.setId_article(rs.getInt("id"));
            f.insert_prix(ph);
            f.insert_prixa(pa);
            response.sendRedirect("../pages/insert_article.jsp");
        %>
    </body>
</html>
