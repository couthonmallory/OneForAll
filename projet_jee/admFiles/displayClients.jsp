<%@include file="admHeader.jsp" %>

<div class="d-flex">
	
<div class="align-start-start bg-secondary text-white text-center sidebar list-group" style="width: 20%">
	<br>
	<a href="displayClients" class="list-group-item bg-primary text-white">
		Gestion des Utilisateurs
	</a>
	<br>
	<a href="displayAuteurs" class="list-group-item text-white bg-secondary">
		Gestion des Auteurs
	</a>
	<br>  
	<a href="../projet_jee/displayArticles?receiver=admFiles/displayArticles.jsp" class="list-group-item text-white bg-secondary">
		Gestion des Articles
	</a>
	
	<br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> 
</div>
	
	<div style=" width: 70%;">
	<br> <br> <br>
 
 <table style=" width: 100%; margin: auto auto;border-collapse: collapse; margin-left: 30px;" class="table table-striped">
 
 <thead class="bg-dark text-white">
 	<tr scope="row" style="border-bottom: black dotted 1px;">
 		<td style="text-align: center; margin: auto 2px;">Nom</td>
 		<td style="text-align: center; margin: auto 2px;">Prenom</td>
 		<td style="text-align: center; margin: auto 2px;">Email</td>
 		<td style="text-align: center; margin: auto 2px;">Username</td>
 		<td style="text-align: center; margin: auto 2px;">Supprimer</td>
 	</tr>
 </thead>
 
 <tbody>
 	
	<c:forEach items="${clients}"  var="line">
		<tr scope="row">
		<td style="text-align: center; margin: auto 2px;">${line.nom}</td>
 		<td style="text-align: center; margin: auto 2px;">${line.prenom}</td>
 		<td style="text-align: center; margin: auto 2px;">${line.email}</td>
 		<td style="text-align: center; margin: auto 2px;">${line.username}</td>
 		
 		
 		<td style="text-align: center; margin: auto 2px;">
 			<a href="deleteClient?idClt=${line.idClt}">
				<div class="deleteLect">
					 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
  					<path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5zm3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0V6z"/>
  					<path fill-rule="evenodd" d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1v1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4H4.118zM2.5 3V2h11v1h-11z"/>
				</svg>
				</div>
 			</a>
 		</td>
 		
		</tr>
	</c:forEach>
 	
 </tbody>
 
 </table>
 
  <br> <br>
  
  		<div class="text-center">
  		
  				<button type="button" class=" btn" data-bs-toggle="modal" data-bs-target="#exampleModal">
  					<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
  						<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  						<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
					</svg>
  				</button>
  		</div>
  		
  		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  			<div class="modal-dialog">
    			<div class="modal-content">
<form action="addClient" method="post">  
      				<div class="modal-header">
        				<h5 class="modal-title" id="exampleModalLabel">Ajouter un client</h5>
        				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      				</div>
      				<div class="modal-body">
  						
	<div class="text-center form-group mx-auto" >
		<div style="margin: 10px;">
			
        		<label for="nom">Nom : </label>
        		<input class="form-control" type="text" name="nom" id="nom" placeholder="Nom" focus required> <br>
        		<label for="nom">Prenom : </label>
        		<input class="form-control" type="text" name="prenom" id="prenom" placeholder="Prenom"  required> <br>
        		<label for="nom">Email : </label>
        		<input class="form-control" type="text" name="email" id="email" placeholder="Email" required> <br>
        		<label for="nom">Username : </label>
        		<input class="form-control" type="text" name="username" id="username" placeholder="Username" required> <br>
        		<label for="nom">Password : </label>
        		<input class="form-control" type="password" name="password" id="password" placeholder="Password"  required> <br>
		</div>
	</div>	
      	   			</div>
      				<div class="modal-footer">
        				<button type="reset" class="btn btn-secondary" data-bs-dismiss="modal">Reset</button>
        				<button type="submit" class="btn btn-primary">Ajouter </button>
      				</div>
</form>
    			</div>
  			</div>
		</div>
  
   <br>
	</div>
	
</div>

<script>
        $(document).ready(function(){

        	$('.deleteLect').click(function(){
        		alert('Are you sure');
        	}
        	)
        	
        })
</script>
	
<%@include file="../layouts/footer.jsp" %>