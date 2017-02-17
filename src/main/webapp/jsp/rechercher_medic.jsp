<%@page import="hopital.Patients"%>
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
				<li><a href="../pages/accueil.jsp">Accueil</a></li>
				<li><a href="../pages/facture.jsp" class="selected">Facture</a></li>
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
                                        <th style="width:400px;">Noms et prénoms</th>
                                        <th style="width:400px;">Sexe</th>
                                        <th style="width:400px;">Date de naissance</th>
                                        <th style="width:400px;">E-mail</th>
                                        <th style="width:400px;">Adresse</th>
                                        <th style="width:400px;">Medecins traitants</th>
                                        <th style="width:400px;">Consultation</th>
                                        <th style="width:400px;">Modifier medecin traitants</th>
                                    </tr>
                                </thead>
                                <% 
                                    Fonction f = new Fonction();

                                    Patients pa = new Patients();
                                    
                                    String nom=request.getParameter("name");
                                    Patients[] p=f.recherchep(nom);
                                    int i=0;
                                    //out.print(m.length);
                                    for(i=0;i<p.length;i++){
                                %>
                                <tbody>
                                    <tr>
                                        <td><% out.print(p[i].getId_patient()); %></td>
                                        <td style="width:400px;"><% out.print(p[i].getNom()); %></td>
                                        <td style="width:400px;"><% out.print(p[i].getSexe()); %></td>
                                        <td style="width:400px;"><% out.print(p[i].getDate_n()); %></td>
                                        <td style="width:400px;"><% out.print(p[i].getMail()); %></td>
                                        <td style="width:400px;"><% out.print(p[i].getAdresse()); %></td>
                                        <%
                                            Medecins []m=f.traitants();
                                            int me=0;
                                            for(me=0;me<m.length;me++){
                                                if(m[me].getId_emploie()==p[i].getId_traitant())
                                                {
                                        %>
                                        <td style="width:400px;"><% out.print(m[me].getNomemploie()); %></td>
                                        <%
                                            }
                                            }
                                        %>
                                        <td><a href="../pages/medicament.jsp?id=<%  out.print(p[i].getId_patient()); %>"><input type="button" class="btn btn-danger" value="Consultation"></a></td>
                                        <td><a href="patient.jsp?id=<%  out.print(p[i].getId_patient()); %>"><input type="button" class="btn btn-danger" value="Modifier"></a></td>
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