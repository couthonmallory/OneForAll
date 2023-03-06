<%@include file="../layouts/header.jsp" %>
	
	<div class="text-center form-group border border-5 border-primary w-50 mx-auto" >
		<div class="" style="margin: 50px;">
			<form action="addLecteur" method="post">
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

        <input class="btn btn-primary" type="submit" value="Ajouter"> &nbsp; &nbsp; &nbsp;
        <input class="btn btn-secondary" type="reset" value="Rénitialiser"> <br>
    	</form>
		</div>
	</div>

<%@include file="../layouts/footer.jsp" %>
