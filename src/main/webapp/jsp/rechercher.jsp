<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="hopital.Medecins"%>
<%@page import="hopital.Poste"%>
<%@page import="hopital.Fonction"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Gestion hopital</title>
	<meta charset="utf-8">
	<meta name="author" content="pixelhint.com">
	<meta name="description" content="Magnetic is a stunning responsive HTML5/CSS3 photography/portfolio website template"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
	<link rel="stylesheet" type="text/css" href="../pages/assets/css/reset.css">
	<link rel="stylesheet" type="text/css" href="../pages/assets/css/main.css">
        <script type="text/javascript" src="../pages/assets/js/jquery.js"></script>
        <script type="text/javascript" src="../pages/assets/js/main.js"></script>
        
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../assets/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../assets/css/form-elements.css">
        <link rel="stylesheet" href="../assets/css/style.css">


        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>

	<header style="border:solid 1px black ;">
		<div class="logo">
			<a href="index.html"><img src="../assets/img/logo.png" title="Magnetic" alt="Magnetic"/></a>
		</div><!-- end logo -->

		<div id="menu_icon"></div>
		<nav>
			<ul>
				<li><a href="../index.jsp">Accueil</a></li>
				<li><a href="../pages/insertione.jsp">Inserer des employés</a></li>
				<li><a href="../pages/insertionc.jsp">Insérer des catégories</a></li>
				<li><a href="../pages/recherche.jsp">Rechercher des employés</a></li>
			</ul>
		</nav><!-- end navigation menu -->

		<div class="footer clearfix">
			<ul class="social clearfix">
				<li><a href="#" class="fb" data-title="Facebook"></a></li>
				<li><a href="#" class="google" data-title="Google +"></a></li>
				<li><a href="#" class="behance" data-title="Behance"></a></li>
				<!--<li><a href="#" class="twitter" data-title="Twitter"></a></li>
				<li><a href="#" class="dribble" data-title="Dribble"></a></li>-->
				<li><a href="#" class="rss" data-title="RSS"></a></li>
			</ul><!-- end social -->

			<div class="rights">
				<p>Copyright © 2016 hopital.</p>
				<p>Template by <a href="">Randÿ Raboanaly</a></p>
			</div><!-- end rights -->
		</div ><!-- end footer -->
	</header><!-- end header -->

	<section class="main clearfix" style="background:white;">
                <div class="container">
                    <h2>Résultats des recherches</h2>
                        <div>
                            <table class="table">
                                <thead>
                                    <tr class="danger">
                                        <th>Numero</th>
                                        <th style="width:400px;">Noms des employés</th>
                                        <th style="width:400px;">Sexe</th>
                                        <th style="width:400px;">Date de naissance</th>
                                        <th style="width:400px;">Situation martiale</th>
                                        <th style="width:400px;">Adresse</th>
                                        <th>E-mail</th>
                                        <th style="width:400px;">Contact</th>
                                        <th style="width:400px;">Poste</th>
                                        <th>Modification</th>
                                        <th>Suppression</th>
                                    </tr>
                                </thead>
                                <% 
                                    Fonction f = new Fonction();

                                    /*Date d=null;
                                    String daty=f.formatDate(request.getParameter("date_nais"));
                                    SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yy");
                                    d = sdf.parse(daty);*/

                                    Medecins[]  m=f.recherche(request.getParameter("name"),request.getParameter("sexe"),request.getParameter("date_nais"),request.getParameter("mart"),request.getParameter("adresse"),request.getParameter("email"),request.getParameter("phone"));
                                    int i=0;
                                    //out.print(m.length);
                                    for(i=0;i<m.length;i++){
                                %>
                                <tbody>
                                    <tr>
                                        <td><% out.print(m[i].getId_emploie()); %></td>
                                        <td style="width:400px;"><% out.print(m[i].getNomemploie()); %></td>
                                        <td style="width:400px;"><% out.print(m[i].getSexee()); %></td>
                                        <td style="width:400px;"><% out.print(m[i].getDate_naisse()); %></td>
                                        <td style="width:400px;"><% out.print(m[i].getMariagee()); %></td>
                                        <td style="width:400px;"><% out.print(m[i].getAdressee()); %></td>
                                        <td><% out.print(m[i].getEmail()); %></td>
                                        <td style="width:400px;"><% out.print(m[i].getContact()); %></td>
                                            <%
                                                Poste []p=f.getPoste();
                                                int pa=0;
                                                for(pa=0;pa<p.length;pa++){
                                                    if(p[pa].getId_occupations()==m[i].getId_occupations())
                                                    {
                                            %>
                                        <td style="width:400px;"><% out.print(p[pa].getOccupation()); %></td>
                                        <%
                                            }
                                            }
                                        %>
                                        <td><a href="../pages/modifier.jsp?id=<%  out.print(m[i].getId_emploie()); %>"><input type="button" class="btn btn-danger" value="Modifier"></a></td>
                                        <td><a href="../pages/supprimer.jsp?id=<%  out.print(m[i].getId_emploie()); %>"><input type="button" class="btn btn-danger" value="Supprimer"></a></td>
                                    </tr>
                                </tbody>
                                <% } %>
                            </table>
                        </div>
            </div><!-- container -->
	</section><!-- end main -->
        <script src="../assets/js/jquery-1.11.1.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.backstretch.min.js"></script>
        <script src="../assets/js/scripts.js"></script>
	
</body>
</html>