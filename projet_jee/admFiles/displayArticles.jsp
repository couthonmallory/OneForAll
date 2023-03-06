<%@include file="admHeader.jsp" %>

<div class="d-flex">

<div class="align-start-start bg-secondary text-white text-center sidebar list-group" style="width: 20%">
	<br>
	<a href="displayClients" class="list-group-item bg-secondary text-white">
		Gestion des Utilisateurs
	</a>
	<br>
	<a href="displayAuteurs" class="list-group-item bg-secondary text-white">
		Gestion des Auteurs
	</a>
	<br>  
	<a href="../projet_jee/displayArticles?receiver=admFiles/displayArticles.jsp" class="list-group-item bg-primary text-white">
		Gestion des Articles
	</a>
	
<br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br>
</div>
	
<div style=" width: 70%;">
		<br> <br> <br>
 
 <table style=" width: 100%; margin: auto auto;border-collapse: collapse; margin-left: 30px;" class="table table-striped">
 
 <thead class="bg-dark text-white">
 	<tr scope="row" scope="row" style="border-bottom: black dotted 1px;">
 		<td style="text-align: center; margin: auto 2px;">Titre</td>
 		<td style="text-align: center; margin: auto 2px;">Auteur</td>
 		<td style="text-align: center; margin: auto 2px;">Categorie</td>
 		<td style="text-align: center; margin: auto 2px;">Date de publication</td>
 		<td style="text-align: center; margin: auto 2px;">Visualiser</td>
 		<td style="text-align: center; margin: auto 2px;">Supprimer</td>
 	</tr>
 </thead>
 
 <tbody>
 	
	<c:forEach items="${articles}"  var="line">
		<tr scope="row">
		<td style="text-align: center; margin: auto 2px;">${line.title}</td>
 		<td style="text-align: center; margin: auto 2px;">${line.autName}</td>
 		<td style="text-align: center; margin: auto 2px;">${line.domaine}</td>
 		<td style="text-align: center; margin: auto 2px;">${line.date_pub}</td>
 		
 		
 		<td style="text-align: center; margin: auto 2px;">
 			<a href="displayArticle?idArt=${line.idArt}">
 				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  					<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
				</svg>
 			</a>
 		</td>
 		
 		
 		<td style="text-align: center; margin: auto 2px;">
 			<a href="deleteArticle?idArt=${line.idArt}">
 				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  					<path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
  					<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
				</svg>
 			</a>
 		</td>
 		
		</tr>
	</c:forEach>
 	
 </tbody>
 
 </table>
</div>
 	
</div>

<%@include file="../layouts/footer.jsp" %>