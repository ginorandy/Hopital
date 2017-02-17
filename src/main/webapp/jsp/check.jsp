<%-- 
    Document   : check
    Created on : 14 déc. 2016, 09:50:25
    Author     : ITU
--%>

<%@page import="hopital.Consultation"%>
<%@page import="hopital.Paiement"%>
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

            /*int cat=Integer.parseInt(request.getParameter("categorie"));
            String nom=request.getParameter("name");*/
            
            int id_patient=Integer.parseInt(request.getParameter("id"));
            
            
            
            Date d=null;
            String daty=f.formatDate(request.getParameter("date_me"));
            SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd");
            d = sdf.parse(daty);
            
            Facture_mere fm=new Facture_mere();
            Facture_fille ff=new Facture_fille();
            Paiement p=new Paiement();
            
            
            double somme=0;
            double tva=0;
            double montant=0;
            double remise=0;
            double montantpayer=0;
            
            Consultation[]a=f.patient(id_patient);

            //Articles[] a=f.recherchea(nom,cat);
            int i=0;
            out.print(a.length);
            //out.print(m.length);
            for(i=0;i<a.length;i++)
            {
                /*PrixA []m=f.now(a[i].getId_articles());
                int me=0;
                double prix = 0;
                for(me=0;me<m.length;me++)
                {
                    if(m[me].getId_article()==a[i].getId_articles())
                    {
                        prix=m[me].getPrix();
                    }
                }*/
                String check=request.getParameter("article"+a[i].getId_consultation());
                out.print(check);
                if(check!=null)
                {
                    
                    String qu=request.getParameter("valiny"+a[i].getId_consultation());
                    int q;
                    if(qu==null)
                    {
                        q=1;
                    }
                    else
                    {
                        q=Integer.parseInt(qu);
                    }
                    
                    //String id=request.getParameter("id"+a[i].getId_consultation());
                    //out.print(id);
                    
                    somme=somme+(a[i].getPrix() * q);
                    tva=tva+((20*somme)/100);
                    //montant=montant+(somme+tva);
                    
                    if(somme >= 100000)
                    {
                        remise=remise+((5*somme)/100);
                        montantpayer=montantpayer+(somme-remise)+tva;
                    }
                    else
                    {
                        remise=0;
                        montantpayer=0;
                        remise=remise+0;
                        montantpayer=montantpayer+somme+tva;
                    }
                    
                }
            }
            

            fm.setTva(tva);
            fm.setRemise(remise);
            fm.setDate_now(d);
            fm.setId_patient(id_patient);
            fm.setMontant(montantpayer);
            
            
            //out.print(montant);
            f.insert_facture_mere(fm);
            
            somme=0;
            for(i=0;i<a.length;i++)
            {
                /*PrixA []m=f.now(a[i].getId_articles());
                int me=0;
                double prix = 0;
                for(me=0;me<m.length;me++)
                {
                    if(m[me].getId_article()==a[i].getId_articles())
                    {
                        prix=m[me].getPrix();
                    }
                }*/
                String art="article"+a[i].getId_consultation();
                String check=request.getParameter(art);
                
                if(check!=null)
                {
                    out.print(a[i].getId_consultation());
                    
                    Connection conexion;
                    connexion connection=new connexion();
                    connection.connect();

                    conexion=connection.getConnexion();
                    Statement stmt=conexion.createStatement();
                    String req="select max(id_fm) as id from facture_mere";
                    ResultSet rs=stmt.executeQuery(req);
                    rs.next();
                    
                    //int quantite=0;
                    String id=request.getParameter("id"+a[i].getId_consultation());
                    //out.print(id);
                    String qu=request.getParameter("valiny"+a[i].getId_consultation());
                    int q;
                    if(qu==null)
                    {
                        q=1;
                    }
                    else
                    {
                        q=Integer.parseInt(qu);
                    }
                    
                         
                    somme=somme+(a[i].getPrix() * q);

                    ff.setQuantite(q);
                    ff.setPrix(somme);
                    int id_article=a[i].getId_consultation();
                    ff.setId_article(id_article);
                    ff.setId_fm(rs.getInt("id"));
                    //out.print(somme);
                    f.insert_facture_fille(ff);
                    somme=0;

                }
            }
            //response.sendRedirect("../pages/panier.jsp");
            
        %>
    </body>
</html>
