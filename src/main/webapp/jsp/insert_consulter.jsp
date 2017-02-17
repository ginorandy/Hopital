<%-- 
    Document   : check
    Created on : 14 déc. 2016, 09:50:25
    Author     : ITU
--%>

<%@page import="hopital.Consultation"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="hopital.connexion"%>
<%@page import="java.sql.Connection"%>
<%@page import="hopital.Facture_fille"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="hopital.Facture_mere"%>
<%@page import="hopital.PrixA"%>
<%@page import="hopital.Articles"%>
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
            
            Fonction f = new Fonction();

            
            
            String consult="consultation";
            String prixc=request.getParameter("prixc");
            double prix_cons=Double.parseDouble(prixc);
            
            int id_patient=Integer.parseInt(request.getParameter("id"));
            
            Date d=null;
            String daty=f.formatDate(request.getParameter("date_me"));
            SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd");
            d = sdf.parse(daty);
            
            Consultation c=new Consultation();
            c.setId_patient(id_patient);
            c.setDesignation(consult);
            c.setPrix(prix_cons);
            c.setDate_cons(d);
            f.insert_consultation(c);
            
            int cat=Integer.parseInt(request.getParameter("categorie"));
            String nom=request.getParameter("name");
           
            Articles[] a=f.recherchea(nom,cat);
            int i=0;
            for(i=0;i<a.length;i++)
            {
                PrixA []m=f.now(a[i].getId_articles());
                int me=0;
                double prix = 0;
                String nom_a=null;
                for(me=0;me<m.length;me++)
                {
                    if(m[me].getId_article()==a[i].getId_articles())
                    {
                        prix=m[me].getPrix();
                        nom_a=a[i].getNom();
                    }
                }
                String check=request.getParameter("article"+a[i].getId_articles());
                out.print(check);
                if(check!=null)
                {
                    c.setId_patient(id_patient);
                    c.setDesignation(nom_a);
                    c.setPrix(prix);
                    c.setDate_cons(d);
                    f.insert_consultation(c);
                }
            }
            response.sendRedirect("../pages/consultation.jsp");
            
        %>
    </body>
</html>
