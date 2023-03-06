<%@include file="../layouts/header.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% HttpSession session_hp = request.getSession(); %>
<div>
	<%if(session_hp.getAttribute("role") != null && session_hp.getAttribute("role").equals("usr")){ %>
	<a href="displayPersoArt?idAut=${client.idClt}"><button class="btn btn-primary text-white">My workspace</button></a>
	<%} %>
</div>

		<br>  <br> <br>

		

	 <div class="container p-4">
        <div class="row justify-content-evenly g-0">
<c:forEach items="${articles}"  var="line">
        <div class="card col-3 mb-3 mx-2" style="height: max-content; width: 280px">
            <img src="../projet_jee/images/${line.image}" alt="" class="card-img-top" height="250" width="50">
            <div class="card-body container">
                <div class="row  align-left h4 font-bold">
                    ${line.title }
                </div>
                <div class="row">
                    <div class="d-flex justify-content-between" 
                    >
                    <span class="text-success">${line.domaine }</span>
                    <span class="text-black-50">${line.date_pub }</span>
                </div>
                </div>
                <div class="row mt-1">
                    <span class="d-flex"> ${line.resume } </span>
                </div>
                <br>
                <div class="row mt-1">
                    <div class="d-flex align-items-end">
                    	<%
                    			
                    			if(session_hp.getAttribute("role") == null || 
                    					!(session_hp.getAttribute("role").equals("usr")) ){
                    			%>
								<a href="login" class="align-center">
									<button class="">Read More</button>
								</a>
								<%
                    				}else{
                    			%>
                    			<a href="displayArticle?idArt=${line.idArt }" class="align-center">
									<button class="">Read More</button>
								</a>
								<% 
								   }
                    			%>		
                    </div>
                </div>
            </div>
        </div>
           
</c:forEach>

            
        </div>
    </div>
	




			
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script> -->

<%@include file="../layouts/footer.jsp" %>