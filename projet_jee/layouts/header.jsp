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
<link rel="icon" type="image/png" href="../projet_jee/layouts/squid_icon_by_blazikendojo_db7q0i6-fullview.jpg">
<script src="/projet_jee/jsFiles/jquery-3.6.1.js"></script>
</head>
<body class="" style="background-color: #C4C8C9;">

    <nav class="navbar  navbar-dark navbar-expand-md navbar-light bg-dark fixed-top text-primary bg-dark-md " 
        style="height: 110px; position: relative;">
        <div class="container-fluid justify-content-between  p-5">
            <a href="oneForAll" class="navbar-brand mb-0 h1">
                <img class="d-inline-block align-top" width="30" height="30"
                    src="../projet_jee/layouts/squid_icon_by_blazikendojo_db7q0i6-fullview.jpg" alt="">
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
                    	<a href="oneForAll" class="nav-link active"><span class="text-black">Home</span></a>
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
 										<a href="login">
 											<button class="btn btn-outline-success">Login</button>
 										</a>
 										<% 
    							}else{
    									%>
    									<a href="logout">
											<button class="btn btn-outline-success">Logout</button>
										</a>
										<% 
    							}
    						%>
                </div>
            </div>
    </nav>

    

    
  
