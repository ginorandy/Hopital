<%@page import="hopital.Patients"%>
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
				<li><a href="accueil.jsp" class="selected">Accueil</a></li>
				<li><a href="insertione.jsp">Inserer des employés</a></li>
				<li><a href="insertionc.jsp">Insérer des catégories</a></li>
				<li><a href="recherche.jsp">Rechercher des employés</a></li>
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
            <h2>Modification du medecin traitant du patient</h2>
            <br/>
                <%
                        String id = request.getParameter("id");
                        int id_patient=Integer.parseInt(id);
                        Fonction f = new Fonction();
                        Patients[] m=f.modif(id_patient);
                        int a = 0;
                        for(a=0;a<m.length;a++)
                        {
                        //out.print(m.length);
                    %>
                    <form role="form" method="get" action="modification_p.jsp">
                      <div class="form-group">
                        <div class="col-sm-10">
                            <input type="hidden" class="form-control" id="id" value="<% out.print(m[a].getId_patient()); %>" name="id" style="border:solid 1px black;">
                        </div>
                      </div>
                      <br/>
                      <br/>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="nom">Nom et prénoms:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="name" value="<% out.print(m[a].getNom()); %>" name="name" style="border:solid 1px black;">
                        </div>
                      </div>
                      <br/>
                      <br/>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="form">Sexe</label>
                        <div class="col-sm-10">
                            <select name="sexe" class="form-control" style="border:solid 1px black;height:50px;">
                                <option value="<% out.print(m[a].getSexe()); %>"><% out.print(m[a].getSexe()); %></option>
                                <%
                                    Fonction fe=new Fonction();
                                    String sexe_contraire = fe.sexe_contraire(m[a].getSexe());
                                %>
                                
                                <option value="<% out.print(sexe_contraire); %>"><% out.print(sexe_contraire); %></option>
                            </select>
                        </div>
                      </div>
                      <br/>
                      <br/>
                      
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="sexe">Adresse:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="adresse" value="<% out.print(m[a].getAdresse()); %>" id="adresse" style="border:solid 1px black;">
                        </div>
                      </div>
                      <br/>
                      <br/>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="sexe">Email:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="email" value="<% out.print(m[a].getMail()); %>" id="email" style="border:solid 1px black;">
                        </div>
                      </div>
                      <br/>
                      <br/>
                      <div class="form-group">
                        <label class="control-label col-sm-2" for="sexe">Phone:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" name="phone" value="<% out.print(m[a].getPhone()); %>" id="phone" style="border:solid 1px black;">
                        </div>
                      </div>
                      <br/>
                      <br/>
                      <div class="form-group">
                            <label class="control-label col-sm-2" for="password">Medecins traitants</label>
                            <div class="col-sm-10">
                                <select name="poste" class="form-control" style="border:solid 1px black;height:50px;">
                                <% 
                                    Fonction fa = new Fonction();
                                    Medecins[]  p=fa.getm();
                                    int i=0;
                                    for(i=0;i<p.length;i++){
                                        if(p[i].getId_emploie()==m[a].getId_traitant())
                                        {
                                %> 
                                    <option value="<% out.print(m[a].getId_traitant()); %>"><% out.print(p[i].getNomemploie()); %></option>  
                                <% break;}}
                                        for(i=0;i<p.length;i++){
                                        if(p[i].getId_emploie()==m[a].getId_traitant())
                                        {
                                            continue;
                                        }
                                %>
                                <option value="<% out.print(p[i].getId_emploie()); %>"><% out.print(p[i].getNomemploie()); %></option>
                                <% } %>
                                </select>
                            </div>
                    </div>
                      <br/>
                      <br/>
                      <button type="submit" class="btn btn-default">Modifier</button>
                    </form>
                    <% } %>
          </div>
	</section><!-- end main -->
        <script src="../assets/js/jquery-1.11.1.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.backstretch.min.js"></script>
        <script src="../assets/js/scripts.js"></script>
	
</body>
</html>