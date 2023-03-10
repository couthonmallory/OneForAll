<%@include file="../layouts/header.jsp" %>

<div>
	
	<br> <br> <br>
 
 <table style="border: black 1px solid ; width: 80%; margin: auto auto;border-collapse: collapse; " class="table">
 
 <thead>
 	<tr scope="row">
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">Nom</td>
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">Prenom</td>
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">Email</td>
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">Username</td>
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">Supprimer</td>
 	</tr>
 </thead>
 
 <tbody>
 	
	<c:forEach items="${lecteurs}"  var="line">
		<tr scope="row">
		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">${line.nom}</td>
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">${line.prenom}</td>
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">${line.email}</td>
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">${line.username}</td>
 		
 		
 		<td style="border: black 1px solid; text-align: center; margin: auto 2px;">
 			<a href="deleteLecteur?idLec=${line.idLec}">
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
 
  <br> <br>
  
  		<div class="text-center">
  			<a href="addLecteur"><svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
			</svg></a>
  		</div>
  
   <br>
	
</div>

<br>  <br>
	<a href="displayAuteurs"><button class="btn btn-primary text-dark">Gestion des Auteurs</button></a>

<%@include file="../layouts/footer.jsp" %>