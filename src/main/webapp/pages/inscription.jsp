<%-- 
    Document   : index
    Created on : 20 oct. 2016, 09:37:17
    Author     : ITU
--%>

<%@page import="hopital.Poste"%>
<%@page import="hopital.Fonction"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Hopital</title>
    <link rel="stylesheet" href="../assets/css/style.css">
  </head>
  <body>
  <body>
<div class="container">
    <section id="content">
        <form method="get" action="../jsp/inserer.jsp">
            <h1>Inscription</h1>
            <div>
                <input type="text" name="name" placeholder="Nom et prénoms" required="" id="name" />
            </div>
            <div>
                <input type="text" name="sexe" placeholder="Sexe" required="" id="sexe" />
            </div>
            <div>
                <!--<input type="text" name="date_nais" placeholder="Date de naissance" required="" id="date_nais" />-->
                <input type="date" name="date_nais" id="date_nais" required style="color:black"/>
            </div>
            <div>
                <input type="text" name="mart" placeholder="Situation martiale" required="" id="mart" />
            </div>
            <div>
                <input type="text" name="adresse" placeholder="Adresse" required="" id="adresse" />
            </div>
            <div>
                <input type="text" name="email" placeholder="E-mail" required="" id="email" />
            </div>
            <div>
                <input type="text" name="phone" placeholder="Telephone" required="" id="phone" />
            </div>
            <div>
                Poste:
                <select name="poste">
                <% 
                    Fonction f = new Fonction();
                    Poste[]  p=f.getPoste();
                    int i=0;
                    for(i=0;i<p.length;i++){
                %> 
                    <option value="<% out.print(p[i].getId_occupations()); %>"><% out.print(p[i].getOccupation()); %></option>  
                <% } %>
                </select>
            </div>
            <div>
                <input type="submit" value="Inserer" />
            </div>
        </form><!-- form -->
            <div class="button">
            </div><!-- button -->
    </section><!-- content -->
</div><!-- container -->
</body>
    <script src="../assets/js/index.js"></script>
</body>
</html>

