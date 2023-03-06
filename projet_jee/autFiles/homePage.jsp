<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All in All</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet" type="text/css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="icon" type="image/png" href="../../projet_jee/layouts/squid_icon_by_blazikendojo_db7q0i6-fullview.jpg">
<script src="/projet_jee/jsFiles/jquery-3.6.1.js"></script>
</head>
<body class="" style="background-color: #C4C8C9;">

    <nav class="navbar  navbar-dark navbar-expand-md navbar-light bg-dark fixed-top text-primary bg-dark-md " 
        style="height: 110px; position: relative;">
        <div class="container-fluid justify-content-between  p-5">
            <a href="#" class="navbar-brand mb-0 h1">
                <img class="d-inline-block align-top" width="30" height="30"
                    src="../../projet_jee/layouts/squid_icon_by_blazikendojo_db7q0i6-fullview.jpg" alt="">
                    <span class="text-black">OneForAll</span>
            </a>
            <button
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle Navigation"
            class="navbar-toggler"
            >
            	<span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse bg-dark-lg d-flex justify-content-evenly" id="navbarNav">
	            	<ul class="navbar-nav">
					<li class="nav-item active">
                    	<a href="#" class="nav-link active"><span class="text-black">Home</span></a>
                	</li> 
                	&nbsp; 
					<li class="nav-item active">
                    	<a href="#" class="nav-link"><span class="text-black">About</span></a>
                	</li>
                	&nbsp; 
					<li class="nav-item active">
                    	<a href="#" class="nav-link"><span class="text-black">Contact</span></a>
                	</li>
                	&nbsp; 
					<li class="nav-item dropdown">
          				<a class="nav-link dropdown-toggle text-black" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            			Categorie
          				</a>
          				<ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
            				<li><a class="dropdown-item" href="#">Action</a></li>
            				<li><a class="dropdown-item" href="#">Another action</a></li>
            				<li><a class="dropdown-item" href="#">Something else here</a></li>
          				</ul>
        			</li>
            	</ul>            	
         	</div>

                <div class="d-flex">
                    <form><input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"></form>
                    	&nbsp; 
							<%
    							HttpSession sessionusr = request.getSession();
									// System.out.println(sessionusr.getAttribute("role"));
  								if (sessionusr.getAttribute("role") == null || 
  										!sessionusr.getAttribute("role").equals("usr")) {
  										//response.sendRedirect("http://localhost:8080/projet_jee/login");
 										%> 
 										<a href="../login">
 											<button class="btn btn-outline-success">Login</button>
 										</a>
 										<% 
    							}else{
    									%>
    									<a href="../logout">
											<button class="btn btn-outline-success">Logout</button>
										</a>
										<% 
    							}
    						%>
                </div>
            </div>
    </nav>

    

    
  


<div>
	Bienvenue M. ${client.idClt} <br>
	
	<script src="ckeditor/ckeditor.js"></script>
	
	<br>
	
	<button class="btn btn-primary">Post an article</button> <br>
	<br>
	
	<a href="../displayPersoArt?idAut=${client.idClt}"><button class="btn btn-primary">See personal articles </button></a> <br>
	
	<div class="postArticleForm">
			<center>
        			<form style="width: 80%; margin-top: 15px;" method="post" action="../postArticle"
        			enctype="multipart/form-data">
        				<div hidden>
        					<input name="idAut" value="${client.idClt }">
        				</div>
        			    <div class="input-group mb-2">
      						<div class="input-group-text bg-primary"> 
      							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
  									<path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
								</svg> 
								&nbsp;
      							<span>Title</span> 
      						</div>
      						<input type="text" class="form-control" id="specificSizeInputGroupUsername" name="title" >
    					</div>
    					<div class="input-group mb-2">
  							<span class="input-group-text bg-primary">
  								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-card-list" viewBox="0 0 16 16">
  									<path d="M14.5 3a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-9a.5.5 0 0 1 .5-.5h13zm-13-1A1.5 1.5 0 0 0 0 3.5v9A1.5 1.5 0 0 0 1.5 14h13a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-13z"/>
  									<path d="M5 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 5 8zm0-2.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm0 5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7a.5.5 0 0 1-.5-.5zm-1-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zM4 8a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm0 2.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0z"/>
								</svg>
								&nbsp;
  								Résumé
  							</span>
  							<textarea class="form-control" aria-label="With textarea" name="resume"></textarea>
						</div>
            			<textarea name="content"></textarea>
            			<select class="form-select form-select-lg mt-3" aria-label=".form-select-lg example"
            			name="domaine" id="domaine">
  							<option selected>De quoi traite l'article?</option>
  							<option value="politique">Politique</option>
  							<option value="economie">Economie</option>
  							<option value="sciences">Sciences</option>
						</select>
						<div class="input-group mt-2">
  							<input type="file" class="form-control" id="" value="Image de couverture" name="image">
						</div>
						<div class="input-group mt-2">
  							<button type="submit" class="form-control mt-2 bg-success text-white" id="" >Publier</button>
						</div>
        			</form>
    		</center>
	</div>
	
	
	
</div>

<br> <br> <br> <br> <br> <br> <br> <br> <br>

<script>
        $(document).ready(function(){
        	$('.postArticleForm').hide(); 
          $('button').click(function(){
            	$('.postArticleForm').toggle();
          })
        })
        
  /* Pour éditer le texte */
    CKEDITOR.replace('content')
    
</script>
    

<%@include file="../layouts/footer.jsp" %>