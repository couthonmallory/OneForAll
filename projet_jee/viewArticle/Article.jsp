<%@include file="../layouts/header.jsp" %>



    <div  style="margin-top: 75px; "class="mx-auto container">
  <div  class="row ">
   <div style="height: 300px;" class="col-7 text-center  my-auto py-auto
    container ">
    
    <div style="height: 145px;" class="row  justify-items-start">
    	<div style="text-align: left;" class="col align-self-center"><h1>${article.title}</h1></div>
    </div>
    <div style="height: 103px;" class="row ">
    	<div class="col align-self-center"><h6>${article.resume }</h6></div>
    </div>
    <div style="height: 50px;" class="row ">
    <div style="text-align: left;" class="col "> ${article.idAut}  &nbsp; | &nbsp; Publié le ${article.date_pub }</div> 
    </div>
      	
  </div>
    <div style="height: 300px;"  class="col-4  m-auto p-1">
   			<img style="width: 85%; height: 290px; margin-left: 25px; margin-right: 25px" 
   			class="img-fluid" alt="" src="../projet_jee/images/${article.image }">
    </div>
  </div>
</div>

	<div style=" margin: auto; width: 70%; margin-top: 60px; margin-bottom: 100px;"
			class="container ">
			${article.content}
	</div>

<span>${image}</span>

<%@include file="../layouts/footer.jsp" %>