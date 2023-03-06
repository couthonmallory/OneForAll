<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en" itemscope itemtype="http://schema.org/WebPage">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href="../globalJspFiles/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../projet_jee/layouts/squid_icon_by_blazikendojo_db7q0i6-fullview.jpg">
  <title>
    OneForAll
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="../projet_jee/globalJspFiles/assets/css/nucleo-icons.css" rel="stylesheet" />
  <link href="../projet_jee/globalJspFiles/assets/css/nucleo-svg.css" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="../projet_jee/globalJspFiles/assets/css/material-kit.css?v=3.0.4" rel="stylesheet" />
</head>

<body class="sign-in-basic">
  <div class="page-header align-items-start min-vh-100" style="background-image: url('https://images.unsplash.com/photo-1497294815431-9365093b7331?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1950&q=80');" loading="lazy">
    <span class="mask bg-gradient-dark opacity-6"></span>
    <div class="container my-auto sign-in-form">
      <div class="row">
        <div class="col-lg-4 col-md-8 col-12 mx-auto">
          <div class="card z-index-0 fadeIn3 fadeInBottom">
            <div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
              <div class="shadow-primary border-radius-lg py-3 pe-1" style="background-color: #0dcaf0;">
                <h4 class="text-white font-weight-bolder text-center mt-2 mb-0">Sign in</h4>
                <div class="row mt-3">
                  <div class="col-2 text-center ms-auto">
                    <a class="btn btn-link px-3" href="javascript:;">
                      <i class="fa fa-facebook text-white text-lg"></i>
                    </a>
                  </div>
                  <div class="col-2 text-center px-1">
                    <a class="btn btn-link px-3" href="javascript:;">
                      <i class="fa fa-github text-white text-lg"></i>
                    </a>
                  </div>
                  <div class="col-2 text-center me-auto">
                    <a class="btn btn-link px-3" href="javascript:;">
                      <i class="fa fa-google text-white text-lg"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="card-body">
              <form role="form"  method="post" action="login" class="text-start">
                <div class="input-group input-group-outline my-3">
                  <input type="text" class="form-control" placeholder="Username" name="username">
                </div>
                <div class="input-group input-group-outline mb-3">
                  <input type="password" class="form-control" placeholder="Password" name="password">
                </div>
               <div class="text-center">
               	<input class="" type="radio" name="role" id="user" value="user" checked>
			  	<label class=" form-label" for="user">User</label>
			   &nbsp; &nbsp; &nbsp;
			   	<input class="" type="radio" name="role" id="admin" value="admin" >
			  	<label class="form-label" for="admin">Admin</label>
               </div> 
               <p class="text-sm text-center text-danger">
                  ${errorMessage}
                </p>
               <div class="text-center">
                  <button type="submit" class="btn w-100 my-4 mb-2 text-white" style="background-color: #0dcaf0;">Sign in</button>
               </div>
               <p class="mt-4 text-sm text-center">
                  <a type="button" class="sign-up-btn">Don't have an account?</a>
               </p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div class="container my-auto sign-up-form">
    	<div class="row">
    		<div class="col-lg-4 col-md-8 mx-auto">
    			<div class="card z-index-0">
    				<div class="card-header p-0 position-relative mt-n4 mx-3 z-index-2">
    					<div class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1">
    						<h4 class="text-white font-weight-bolder text-center mt-2 mb-0">Register with</h4>
    						<div class="row mt-3">
    							<div class="col-2 text-center ms-auto">
    								<a class="btn btn-link px-3" href="javascript:;">
    									<i class="fa fa-facebook text-white text-lg" aria-hidden="true"></i>
    								</a>
    							</div>
    							<div class="col-2 text-center px-1">
    								<a class="btn btn-link px-3" href="javascript:;">
    									<i class="fa fa-github text-white text-lg" aria-hidden="true"></i>
    								</a>
    							</div>
    							<div class="col-2 text-center me-auto">
    								<a class="btn btn-link px-3" href="javascript:;">
    									<i class="fa fa-google text-white text-lg" aria-hidden="true"></i>
    								</a>
    							</div>
    						</div>
    					</div>
    				</div>
    				<div class="row px-xl-5 px-sm-4 px-3">
    					<div class="mt-2 position-relative text-center">
    						<p class="text-sm font-weight-bold mb-2 text-secondary text-border d-inline z-index-2 bg-white px-3">
   					 			or
    						</p>
    					</div>
    				</div>
    				<div class="card-body">
    					<form role="form" method="post" action="regisLec">
    						<div class="input-group input-group-dynamic mb-3">
    							<input type="text" class="form-control" aria-label="Nom" name="nom" placeholder="Nom">
    						</div>
    						<div class="input-group input-group-dynamic mb-3">
    							<input type="text" class="form-control" aria-label="Prenom" name="prenom" placeholder="Prenom">
    						</div>
    						<div class="input-group input-group-dynamic mb-3">
    							<input type="text" class="form-control" aria-label="Username" name="username" placeholder="Username">
    						</div>
    						<div class="input-group input-group-dynamic mb-3">
    							<input type="email" class="form-control" aria-label="Email" name="email" placeholder="Email">
    						</div>
    						<div class="input-group input-group-dynamic mb-3">
    							<input type="password" class="form-control" aria-label="Password" name="password" placeholder="Password">
    						</div>
    						<div class="text-center">
    							<button type="submit" class="btn bg-gradient-dark w-100 my-4 mb-2">Sign up</button>
    						</div>
    						<p class="text-sm mt-3 mb-0">Already have an account? <a type="button" class="text-dark font-weight-bolder sign-in-btn">Sign in</a></p>
    					</form>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
    
    <footer class="footer position-absolute bottom-2 py-2 w-100">
      <div class="container">
        <div class="row align-items-center justify-content-lg-between">
          <div class="col-12 col-md-6 my-auto">
          </div>
          <div class="col-12 col-md-6">
            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
              <li class="nav-item">
                <a href="#" class="nav-link text-white" target="_blank">Contact Us</a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link text-white" target="_blank">About Us</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </footer>
  </div>
  
  <script src="../projet_jee/jsFiles/jquery-3.6.1.js"></script>
  
  <script>
  $(document).ready(function(){
	  	$('.sign-up-form').hide()
		$('.sign-up-btn').click(function(){
			$('.sign-in-form').hide()
			$('.sign-up-form').show()
		})
		$('.sign-in-btn').click(function(){
			$('.sign-up-form').hide()
			$('.sign-in-form').show()
		})
  })
  </script>
  
</body>

</html>