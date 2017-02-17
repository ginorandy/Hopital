<%@page import="hopital.Consultation"%>
<%@page import="hopital.PrixA"%>
<%@page import="hopital.Articles"%>
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
				<li><a href="insertion.jsp">Insertion</a></li>
				<li><a href="facture.jsp" class="selected">Facture</a></li>
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
                    <form action="check.jsp" method="get">
                        
                            <div class="form-group">
                                
                                <label class="control-label col-sm-2" for="nom">Date:</label>
                                <div class="col-sm-10">
                                    <input type="date" class="form-control" id="date_me" name="date_me" style="border:solid 1px black;height:50px;width:150px">
                                </div>
                                
                            </div>
                        <br/>
                        <br/>
                    
                            <% 
                                Fonction f = new Fonction();

                                String id=request.getParameter("id");
                                
                                //String nom=request.getParameter("name");
                                
                                Consultation[]c=f.patient(Integer.parseInt(id));
                                
                                //Articles[] a=f.recherchea(nom,cat);
                                int i=0;
                                //out.print(m.length);
                                for(i=0;i<c.length;i++)
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
                                    double prix = 0;
                                    prix=c[i].getPrix();
                                    
                                    %>
                                    <input type="hidden" name="<% out.print("id"+c[i].getId_consultation()); %>" value="<% out.print(c[i].getId_consultation()); %>">
                                    <div class="checkbox">
                                        <div class="col-sm-4">
                                            <label class="control-label col-sm-6" for="nom"><% out.print("Produit n°:"+c[i].getId_consultation()); %></label>
                                            <div class="col-sm-6">
                                                <input type="checkbox" name="<% out.print("article"+c[i].getId_consultation()); %>"><% out.print(c[i].getDesignation()+"("+prix+" Ariary)"); %>
                                            </div>
                                        </div>
                                        <div class="col-sm-8">
                                            <label class="control-label col-sm-2" for="nom">Quantités:</label>
                                            <div class="col-sm-10">
                                                <% if(c[i].getDesignation().compareToIgnoreCase("consultation")!=0)
                                                {
                                                %>
                                                <input type="text" class="form-control" id="<% out.print("valiny"+c[i].getId_consultation()); %>" name="<% out.print("valiny"+c[i].getId_consultation()); %>" style="border:solid 1px black;width:200px;">
                                                <%
                                                    }
                                                    %>
                                            </div>
                                        </div>
                                        <br/>
                                        <br/>
                                    </div> 
                                    <%
                                    }
                                %>
                            
                            <input type="hidden" name="id" value="<% out.print(id); %>">
                            <!--<input type="hidden" name="categorie" value="out.print(cat); %>">
                            <input type="hidden" name="name" value="out.print(nom); %>">-->
                            <button type="submit" class="btn btn-default">OK</button>
                            </form>
                        </div>
                            
	</section><!-- end main -->
        <script src="../assets/js/jquery-1.11.1.min.js"></script>
        <script src="../assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.backstretch.min.js"></script>
        <script src="../assets/js/scripts.js"></script>
	
</body>
</html>