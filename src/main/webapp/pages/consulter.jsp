<%@page import="hopital.PrixA"%>
<%@page import="hopital.Articles"%>
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
				<li><a href="accueil.jsp">Accueil</a></li>
				<!--<li><a href="consultation.jsp" class="selected">Consultation</a></li>-->
				<li><a href="facture.jsp">Facture</a></li>
                                
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
				<p>Copyright © 2016 hopital.</p>
				<p>Template by <a href="">Randÿ Raboanaly</a></p>
			</div>
		</div > 
	</header><!-- end header -->

	<section class="main clearfix" style="background:white;">
            <div class="container">
                    <h2>Consultation</h2>
                    <form action="../jsp/insert_consulter.jsp" method="get">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nom">Date:</label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="date_me" name="date_me" style="border:solid 1px black;width:200px;" >
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="nom">Prix consultation(en Ariary):</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="prixc" name="prixc" style="border:solid 1px black;width:200px;height:40px">
                            </div>
                        </div>
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="nom" style="color:#FF3333">Liste des medicaments:</label>
                            <div class="col-sm-8">
                                <!--<input type="text" class="form-control" id="prixc" name="prixc" style="border:solid 1px black;width:200px;height:40px">-->
                            </div>
                        </div>
                        <br/>
                        <br/>
                            <% 
                                Fonction f = new Fonction();

                                String id=request.getParameter("id");
                                
                                int cat=Integer.parseInt(request.getParameter("categorie"));
                                String nom=request.getParameter("name");
                                
                                Articles[] a=f.recherchea(nom,cat);
                                int i=0;
                                //out.print(m.length);
                                for(i=0;i<a.length;i++)
                                {
                           
                                 
                                    PrixA []m=f.now(a[i].getId_articles());
                                    int me=0;
                                    double prix = 0;
                                    for(me=0;me<m.length;me++)
                                    {
                                        if(m[me].getId_article()==a[i].getId_articles())
                                        {
                                            prix=m[me].getPrix();
                                        }
                                    }
                            %>
                                <input type="hidden" name="<% out.print("id"+a[i].getId_articles()); %>" value="<% out.print(a[i].getId_articles()); %>">
                              
                        <div class="row">
                            <div class="col-sm-4">
                                    <label class="control-label col-sm-6" for="nom"><% out.print("Produit n°:"+a[i].getId_articles()); %></label>
                                    <div class="col-sm-6">
                                        <input type="checkbox" name="<% out.print("article"+a[i].getId_articles()); %>"><% out.print(a[i].getNom()+"("+prix+" Ariary)"); %>
                                    </div>
                            </div>
                            <div class="col-sm-8">
                                <!--<label class="control-label col-sm-2" for="nom">Quantités:</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="quantite" name="quantite">
                                </div>-->
                            </div>
                            <br/>
                            <br/>
                        </div>
                                    
                                
                            <% }%>
                            
                            <input type="hidden" name="id" value="<% out.print(id); %>">
                            <input type="hidden" name="categorie" value="<% out.print(cat); %>">
                            <input type="hidden" name="name" value="<% out.print(nom); %>">
                        <div class="form-group">
                            <div class="col-sm-4">
                                <button type="submit" class="btn btn-default">Inserer consultation</button>
                            </div>
                            <label class="control-label col-sm-8" for="nom"></label>
                        </div>
                            
                    </form>
                        </div>
	</section>
        <script src="../assets/js/jquery-1.11.1.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.backstretch.min.js"></script>
        <script src="../assets/js/scripts.js"></script>
	
</body>
</html>