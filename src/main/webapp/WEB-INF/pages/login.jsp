<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
   <script type="text/javascript">
   
        function clearMessage(){
        	document.getElementById("unameError").innerHTML="";
        	 document.getElementById("ppassError").innerHTML="";
        }
   
         function  validate() {
        	  var  uname=document.getElementById("uname").value;
        	  if(uname.length==0) {
        		   document.getElementById("unameError").innerHTML="Username cannot be empty!";
        		   document.getElementById("uname").focus();
        		   return;
        	  }
        	  
        	  var  ppass=document.getElementById("ppass").value;
        	  if(ppass.length==0) {
        		   document.getElementById("ppassError").innerHTML="Password cannot be empty!";
        		   document.getElementById("ppass").focus();
        		   return;
        	  }
        	  
        	  //submitting for using JavaScript
        	 // document.forms[0].submit();
        	  document.authForm.submit();
         }
   
   </script>
  
</head>
<body>
   <header style="height: 50px;background-color: yellow;">
<h1>
${pageContext.request.contextPath}</h1>
   </header>
   
   <div class="container">
   		<img  style="height: 200px" src="/img/kids.png">
   		<img  style="height: 200px" src="${pageContext.request.contextPath}/img/kids.png">
   		<img  style="height: 200px" src="${pageContext.request.contextPath}/img/kids.png">
   		<hr/>
   		
   		<div style="width: 60%">
   		  <span style="color:red;font-size: 18px;font-weight: bold;">${cpapa}</span>
   		 
   		  <form name="authForm"   action="auth" method="POST">
   		          <div class="form-group">
   		          			<label>Username</label>
   		          			 <input type="text" id="uname"  name="uname" class="form-control" onkeydown="clearMessage();">
   		          			 <span id="unameError" style="color:red;font-size: 20px;"></span>
   		          </div>
   		 		<div class="form-group">
   		          			<label>Password</label>
   		          			 <input type="password" id="ppass"  name="ppass" class="form-control" onkeydown="clearMessage();">
   		          			  <span id="ppassError" style="color:blue;font-size: 20px;font-weight: bold;"></span>
   		          </div>
   		          <hr>
   		          <button type="button" class="btn btn-primary"  onclick="validate();">Check!!!</button>   	
   		          <a href="msignip">
			<button type="button" class="btn btn-danger">SIGNUP PAGE</button>
		</a>
		
		<a href="showAllSignups">
			<button type="button" class="btn btn-warning">SHOW ALL</button>
		</a>
   		          	
   		</form>
   		</div>
   
   </div>
   

</body>
</html>