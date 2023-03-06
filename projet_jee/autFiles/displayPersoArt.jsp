<%@include file="../layouts/header.jsp" %>

<div>
	
	<br> <br> <br>
 
 <table style=" width: 75%; margin: auto auto;border-collapse: collapse; margin: auto" class="table table-striped">
 
 <thead class="bg-dark text-white">
 	<tr scope="row" style="border-bottom: black dotted 1px;">
 		<td style="text-align: center; margin: auto 2px;">Titre</td>
 		<td style="text-align: center; margin: auto 2px;">Auteur</td>
 		<td style="text-align: center; margin: auto 2px;">Categorie</td>
 		<td style="text-align: center; margin: auto 2px;">Date de publication</td>
 		<td style="text-align: center; margin: auto 2px;">Visualiser</td>
 		<td style="text-align: center; margin: auto 2px;">Modifier</td>
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
 			<a href="updateArticle?idArt=${line.idArt}">
 				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
  					<path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
				</svg>
 			</a>
 		</td>
 		
 		<td style="text-align: center; margin: auto 2px;">
 			<a href="deletePersoArticle?idArt=${line.idArt}&idAut=${client.idClt}">
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
  			<button class="addNewArticle">
  			<svg xmlns="http://www.w3.org/2000/svg" width="36" height="36" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
  				<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
  				<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
			</svg>
		</div>
  		</div>
  
   <br>
   <div class="postArticleForm">
			<center>
        			<form style="width: 80%; margin-top: 15px;" method="post" action="postArticle"
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

<br> <br> <br> 
<script src="autFiles/ckeditor/ckeditor.js"></script>
<script>
        $(document).ready(function(){
        	$('.postArticleForm').hide(); 
          $('.addNewArticle').click(function(){
            	$('.postArticleForm').toggle();
          })
        })
        
  /* Pour éditer le texte */
    CKEDITOR.replace('content')
    
</script>
	
</div>

<br>  <br> 
	
<%@include file="../layouts/footer.jsp" %>