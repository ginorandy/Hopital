<%@page import="hopital.Categories"%>
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
	<link rel="stylesheet" type="text/css" href="assets/css/reset.css">
	<link rel="stylesheet" type="text/css" href="assets/css/main.css">
        <script type="text/javascript" src="assets/js/jquery.js"></script>
        <script type="text/javascript" src="assets/js/main.js"></script>
        
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
				<li><a href="insert_article.jsp" class="selected">Insertion</a></li>
                                <li><a href="accueil.jsp" class="selected">Accueil</a></li>
				<!--<li><a href="facture.jsp">Facture</a></li>-->
                                
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
			</ul>

			<div class="rights">
				<p>Copyright � 2016 hopital.</p>
				<p>Template by <a href="">Rand� Raboanaly</a></p>
			</div>
		</div > 
	</header><!-- end header -->

	<section class="main clearfix" style="background:white;">
            <div class="container">
            <h2>Insertion des medicaments</h2>
            <br/>
                <form role="form" method="get" action="../jsp/insert_medic.jsp">
                    <br/>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="nom">Categories:</label>
                    <select name="categorie" class="form-control" style="border:solid 1px black;height:50px;width:300px;">
                  <% 
                      Fonction f = new Fonction();
                      Categories[]  p=f.getcategorie();
                      int i=0;
                      for(i=0;i<p.length;i++){
                  %> 
                      <option value="<% out.print(p[i].getId_cat()); %>"><% out.print(p[i].getCategories()); %></option>  
                    <% } %>
                    </select>
                  </div>
                  <br/>
                  <br/>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="nom">D�signation:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="medicament" name="medicament" style="border:solid 1px black;">
                    </div>
                  </div>
                  <br/>
                  <br/>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="nom">Prix(en Ariary):</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="prix_me" name="prix_me" style="border:solid 1px black;">
                    </div>
                  </div>
                  <br/>
                  <br/>
                  <div class="form-group">
                    <label class="control-label col-sm-2" for="nom">Date:</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="date_me" name="date_me" style="border:solid 1px black;height:50px">
                    </div>
                  </div>
                  
                  <br/>
                  <br/>
                  <button type="submit" class="btn btn-default">Inserer</button>
                </form>
          </div>
	</section><!-- end main -->
        <script src="../assets/js/jquery-1.11.1.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.backstretch.min.js"></script>
        <script src="../assets/js/scripts.js"></script>
	
</body>
</html>