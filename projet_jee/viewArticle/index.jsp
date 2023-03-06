<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!DOCTYPE html>
<html style="font-size: 16px;" lang="fr"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="Latest blogs, articles on Mountain">
    <meta name="description" content="">
    <title>Accueil</title>
    <link rel="stylesheet" href="../projet_jee/viewArticle/nicepage.css" media="screen">
<link rel="stylesheet" href="../projet_jee/viewArticle/Accueil.css" media="screen">
    <script class="u-script" type="text/javascript" src="../projet_jee/viewArticle/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="../projet_jee/viewArticle/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 5.0.7, nicepage.com">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "images/default-logo.png"
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Accueil">
    <meta property="og:type" content="website">
  </head>
  <body data-home-page="Accueil.html" data-home-page-title="Accueil" class="u-body u-xl-mode" data-lang="fr"><header class="u-clearfix u-header u-header" id="sec-19a5"><div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <a href="https://nicepage.com" class="u-image u-logo u-image-1">
          <img src="../projet_jee/layouts/squid_icon_by_blazikendojo_db7q0i6-fullview.jpg" class="u-logo-image u-logo-image-1">
        </a>
        <nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
          <div class="menu-collapse" style="font-size: 1rem; letter-spacing: 0px;">
            <a class="u-button-style u-custom-left-right-menu-spacing u-custom-padding-bottom u-custom-top-bottom-menu-spacing u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#">
              <svg class="u-svg-link" viewBox="0 0 24 24"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#menu-hamburger"></use></svg>
              <svg class="u-svg-content" version="1.1" id="menu-hamburger" viewBox="0 0 16 16" x="0px" y="0px" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg"><g><rect y="1" width="16" height="2"></rect><rect y="7" width="16" height="2"></rect><rect y="13" width="16" height="2"></rect>
</g></svg>
            </a>
          </div>
          <div class="u-nav-container">
            <ul class="u-nav u-unstyled u-nav-1"><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 10px 20px;">Accueil</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 10px 20px;">À propos de</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link u-text-active-palette-1-base u-text-hover-palette-2-base" href="#" style="padding: 10px 20px;">Contact</a>
</li></ul>
          </div>
          <div class="u-nav-container-collapse">
            <div class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
              <div class="u-inner-container-layout u-sidenav-overflow">
                <div class="u-menu-close"></div>
                <ul class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2"><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">Accueil</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">À propos de</a>
</li><li class="u-nav-item"><a class="u-button-style u-nav-link" href="#">Contact</a>
</li></ul>
              </div>
            </div>
            <div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
          </div>
        </nav>
      </div></header>
    <section class="u-clearfix u-palette-5-light-2 u-valign-middle u-section-1 id="carousel_5f60">
      <div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
        <div class="u-layout">
          <div class="u-layout-row">
            <div class="u-container-style u-layout-cell u-left-cell u-size-28 u-white u-layout-cell-1">
              <div class="u-container-layout u-container-layout-1">
                <h1 class="u-text u-text-1">${article.title} <br>
                <span style="font-weight: 700;">${article.domaine}</span>
                  <br>
                </h1>
                <p class="u-text u-text-2">${article.resume} <a href="https://nicepage.com/c/tabs-website-templates" class="u-active-none u-border-1 u-border-black u-border-no-left u-border-no-right u-border-no-top u-btn u-button-link u-button-style u-hover-none u-none u-text-body-color u-btn-1">viverra mauris</a> in aliquam. Malesuada proin libero nunc consequat interdum. 
                </p>
                <div class="u-blog-control u-metadata u-metadata-1">
                  <span class="u-meta-date u-meta-icon">${article.date_pub}</span>
                </div>
              </div>
            </div>
            <div class="u-align-center u-container-style u-layout-cell u-right-cell u-size-32 u-white u-layout-cell-2">
              <div class="u-container-layout u-container-layout-2">
                <img src="../projet_jee/images/${article.image }" alt="" class="u-image u-image-default u-image-1" data-image-width="500" data-image-height="939">
                <p class="u-text u-text-3"></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section >
    <section class="u-clearfix" id="sec-727e">
      <div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-text u-text-default u-text-1">${article.content}</p>
        <br>
        <div style="text-align: right">${auteur }</div>
      </div>
      
      
    </section>
    
 
 <c:if test="${client.idClt ne null}">
  
    <div class="container mb-5" style="margin-top: 100px;">
       <div class="row">
           <div class="d-flex justify-content-center">
               <form action="postComment" method="post">
               		        <div >
        						<input class="form-control" type="hidden" name="idClt" id="idClt" value="${client.idClt}"> 
        						<input class="form-control" type="hidden" name="idArt" id="idArt" value="${article.idArt}"> 
        					</div>
                    <div class="input-group">
                        <span class="input-group-text">Comment here</span>
                        <textarea class="form-control" rows="3" cols="70" name ="content"></textarea>
                    </div>
    
                    <div class="d-flex justify-content-end mt-2">
                            <input class="  btn btn-primary " type="submit" value="Publier"> &nbsp; &nbsp; &nbsp;
                            <input class="  btn btn-secondary " type="reset" value="Annuler"> <br>
                    </div>
                </form>
            </div>
        </div>
    </div>
  
</c:if>   
	
	<h2>Section des commentaires</h2>
	

	<div class="bg-light" >		
<c:forEach items="${comments}"  var="line">

		<div class="">
        	<div class="d-flex  ">
            	<div class="col-1 d-flex justify-content-start">
                	${line.lecName}
            	</div>
            	<div class=" col-6 d-flex justify-content-end">
                	${line.date_com}
            	</div>
        	</div>
    	</div>
        <div class="col-7 border-top border-dark "  style="margin-left: 10px;">
			${line.content}
        </div>
		        <br>
</c:forEach>
	</div>
 
 
 
    <br>
    
    <footer class="u-align-center u-clearfix u-grey-80 u-footer">
    	<div class="u-clearfix u-sheet u-sheet-1">
    		Something fun
 		</div>
 	</footer>
 
</body></html>