<%@include file="../layouts/header.jsp" %>
<%@page import="javaBeans.ArticleBean" %>
	<script src="autFiles/ckeditor/ckeditor.js"></script>
	<div class="postArticleForm">
			<center>
        			<form style="width: 80%; margin-top: 15px;" method="post" action="updateArticle"
        			enctype="multipart/form-data">
        				<div hidden>
        					<input type="text" name="idArt" value="${article.idArt}">
        					<input type="text" name="idAut" value="${client.idClt }">
        				</div>
        			    <div class="input-group mb-2">
      						<div class="input-group-text bg-primary"> 
      							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
  									<path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
								</svg> 
								&nbsp;
      							<span>Title</span> 
      						</div>
      						<input type="text" class="form-control" id="specificSizeInputGroupUsername" name="title" value="${article.title }">
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
  							<textarea class="form-control" aria-label="With textarea" name="resume" value="">${article.resume }</textarea>
						</div>
            			<textarea name="content">${article.content }</textarea>
            			<select class="form-select form-select-lg mt-3" aria-label=".form-select-lg example"
            			name="domaine" id="domaine">
            				<%ArticleBean art = (ArticleBean)request.getAttribute("article"); 
            				String domaine = art.getDomaine();
            				System.out.println(domaine);%>
  							<option>De quoi traite l'article?</option>
  							<option value="politique" <%if(domaine.equals("politique")){ %> selected
  							<% }%>>Politique</option>
  							<option value="economie" <%if(domaine.equals("economie")){ %> selected
  							<% }%>>Economie</option>
  							<option value="sciences" <%if(domaine.equals("sciences")){ %> selected
  							<% }%>>Sciences</option>
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
	
	<br> <br> <br> <br> <br> <br> <br> <br> <br>

<script>
        $(document).ready(function(){
        	
        })
        
  /* Pour éditer le texte */
    CKEDITOR.replace('content')
    
</script>


<%@include file="../layouts/footer.jsp" %>
