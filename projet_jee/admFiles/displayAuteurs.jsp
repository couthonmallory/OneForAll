<%@include file="admHeader.jsp" %>

<div class="d-flex">

<div class="align-start-start bg-secondary text-white text-center sidebar list-group" style="width: 20%">
	<br>
	<a href="displayClients" class="list-group-item bg-secondary text-white">
		Gestion des Utilisateurs
	</a>
	<br>
	<a href="displayAuteurs" class="list-group-item active bg-primary text-white">
		Gestion des Auteurs
	</a>
	<br>  
	<a href="../projet_jee/displayArticles?receiver=admFiles/displayArticles.jsp" class="list-group-item bg-secondary text-white">
		Gestion des Articles
	</a>
	
	<br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br>
</div>
	
<div style=" width: 70%;">
		<br> <br> <br>
 
 <table style=" width: 100%; margin: auto auto;border-collapse: collapse; margin-left: 30px;" class="table table-striped">
 
 <thead  class="bg-dark text-white" >
 	<tr scope="row" style="border-bottom: black dotted 1px;">
 		<td style="text-align: center; margin: auto 2px;">Username</td>
 		<td style="text-align: center; margin: auto 2px;">Nombre d'articles</td>
 	</tr>
 </thead>
 
 <tbody>
 	
	<c:forEach items="${auteurs}"  var="line">
		<tr scope="row">
		<td style="text-align: center; margin: auto 2px;">${line.username}</td>
 		<td style="text-align: center; margin: auto 2px;">${line.nbArt}</td>
 		
		</tr>
	</c:forEach>
 	
 </tbody>
 
 </table>
 
  <br> <br>
  
  		<div class="text-center text-primary">
	<a href="addAuteur">
		<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
  			<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  			<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
		</svg>
	</a>
  		</div>
  	
   <br>
</div>
	
</div>

<%@include file="../layouts/footer.jsp" %>