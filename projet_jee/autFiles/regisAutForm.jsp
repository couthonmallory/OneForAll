<%@include file="../layouts/header.jsp" %>
	
	<div class="text-primary">Auteur Regsister Form</div>
	
    <div class="border border-2 border-dark mx-auto
    			bg-secondary" 
    			style="margin-top: 100px; position: relative; width:60%">
        <div class="d-flex justify-content-between">
            <div class="" style="width: 70%;">
                <img src="../autFiles/image2.jpeg" style="width: 100%; height: 100%;">
            </div>
            <div class="container">
                <div class="row">
                    <div class="bg-primary rounded-bottom-pill d-flex text-white 
                        justify-content-center rounded-bottom
                        style="height: 40px; text-align:center;>
                        <span class="align-self-center"><h3>Register Form</h3></span>
                    </div>
                    <div class="text-center form-group mx-auto" >
                        <div class="" style="margin: 50px;">
                            <form action="../regisAut" method="post">
                                <label for="nom">Email : </label>
                                <input class="form-control" type="text" name="email" id="email" placeholder="Email" required> <br>
                                <label for="nom">Username : </label>
                                <input class="form-control" type="text" name="username" id="username" placeholder="Username" required> <br>
                                <label for="nom">Password : </label>
                                <input class="form-control" type="password" name="password" id="password" placeholder="Password"  required> <br>
                                <input class="btn btn-primary" type="submit" value="S'inscrire"> &nbsp; &nbsp; &nbsp;
                                <input class="btn btn-secondary" type="reset" value="Rénitialiser"> <br>
                            </form>
                        </div>
                    </div>  
                </div>
            </div>
        </div>
    </div>

<%@include file="../layouts/footer.jsp" %>
