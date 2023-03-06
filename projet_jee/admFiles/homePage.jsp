<%@include file="admHeader.jsp" %>


<div class="d-flex">

<div class="align-start-start bg-secondary text-white text-center sidebar list-group" style="width: 20%">
	<br>
	<a href="#" class="list-group-item bg-primary text-white">
		Dashboard
	</a>
	<br>
	<a href="displayClients" class="list-group-item bg-secondary text-white">
		Gestion des Utilisateurs
	</a>
	<br>
	<a href="displayAuteurs" class="list-group-item bg-secondary text-white">
		Gestion des Auteurs
	</a>
	<br>  
	<a href="../projet_jee/displayArticles?receiver=admFiles/displayArticles.jsp" class="list-group-item bg-secondary text-white">
		Gestion des Articles
	</a>
	
<br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br> <br><br><br>
</div>
	
<div style=" width: 70%;">
		<br> <br> <br>
 	Bienvenue ${admin.username}  <br>  <br>
 	Here is your dashboard hahaha

</div>
 	
</div>

<br> <br> <br> <br> <br> <br> <br> <br> <br>

<%@include file="../layouts/footer.jsp" %>