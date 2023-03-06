<%@include file="../layouts/header.jsp" %>
	
	<div class="text-center  border border-2 border-primary w-50 mx-auto" 
				style="background-image: url('../projet_jee/autFiles/image2.jpeg');
				background-size: cover;
				background-repeat: no-repeat;
				background-position: center center;">
		<div class="" style="margin: 50px;">
			<form action="logAut" method="post">
      
        <label for="nom">Username : </label>
        <input class="form-control" type="text" name="username" id="username" placeholder="Username" required
         value="${username}"> <br>
        <label for="nom">Password : </label>
        <input class="form-control" type="password" name="password" id="password" placeholder="Password"  required>
		<br> <br>
      
        <input class="btn btn-primary" type="submit" value="Se connecter"> &nbsp; &nbsp; &nbsp;
        <input class="btn btn-secondary" type="reset" value="Rénitialiser"> <br> 
        <div>${errorMessage}</div>
    	</form>
    	
		</div>
	</div>
	
	
	
	<a href="../projet_jee/autFiles/regisAutForm.jsp">Not registered yet?</a>

<%@include file="../layouts/footer.jsp" %>
