<%-- 
    Document   : index
    Created on : 20 oct. 2016, 09:37:17
    Author     : ITU
--%>

<%@page import="hopital.Medecins"%>
<%@page import="hopital.Poste"%>
<%@page import="hopital.Fonction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Hopital</title>
    <!--<link rel="stylesheet" href="../assets/css/style.css">-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
  <body>
<div class="container">
    <section id="content">
        <div>
            <table class="table">
                <thead>
                    <th>Noms des employés</th>
                    <th>Sexe</th>
                    <th>Date de naissance</th>
                    <th>Situation martiale</th>
                    <th>Adresse</th>
                    <th>E-mail</th>
                    <th>Contact</th>
                </thead>
                <% 
                    Fonction f = new Fonction();
                    Medecins[]  m=f.recherche();
                    int i=0;
                    for(i=0;i<m.length;i++){
                %>
                <tbody>
                     
                    <td><% out.print(m[i].getNomemploie()); %></td>
                    <td><% out.print(m[i].getSexee()); %></td>
                    <td><% out.print(m[i].getDate_naisse()); %></td>
                    <td><% out.print(m[i].getMariagee()); %></td>
                    <td><% out.print(m[i].getAdressee()); %></td>
                    <td><% out.print(m[i].getEmail()); %></td>
                    <td><% out.print(m[i].getContact()); %></td>
                </tbody>
                <% } %>
            </table>
        </div>
    </section><!-- content -->
</div><!-- container -->
</body>
    <script src="../assets/js/index.js"></script>
</body>
</html>

