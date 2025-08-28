<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  
  <script>
        /* class Customer {
        	 String name;
        	 String email;
        	 int age;
        }          
        Customer c=new Customer(); */
        
         var c ={};
        
  
         //ES6 - 2015 - 
          function addNum(num1,num2){
        	    let temp = num1+num2;
        	    return temp;
          }
          
           var arr =["Nagen","Papa","Mac"];
  
          var imags=["https://thumbs.dreamstime.com/z/group-little-students-over-white-background-42963134.jpg","https://previews.123rf.com/images/olegdudko/olegdudko1508/olegdudko150800025/43151037-high-school-student-university-student-.jpg","https://media.gettyimages.com/photos/young-indian-female-university-student-stock-photo-picture-id1272815911?s=612x612"];
          function wow(imgid){
        	  //ES6 - 2015
        	  //EcmmScript6
        	  let x = Math.floor((Math.random() * 10) + 1);
        	   x=x-7;
        	   if(x<0) {
        		   x=0;
        	   }
        	  console.log("Hmmmm");
        	  let obj=document.getElementById(imgid);
        	  obj.src=imags[x];
        	  
        	  var spanObj=document.getElementById("spanid");
        	  spanObj.innerHTML=imags[x];
        	  
        	  document.getElementById("imaga").src=imags[x];
        	  
        	  
          }
          
          function tclear(){
        	  document.getElementById("img1").src="";
        	  document.getElementById("img2").src="";
        	  document.getElementById("img3").src="";
          }
  
  </script>
  
</head>
<body>
	<div class="container">
    <h1>Hello Me!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
    <img src="" id="img1" alt="coming1 soon"   style="height: 200px;">
    <img src="" id="img2" alt="coming2 soon"   style="height: 200px;">
     <img src="" id="img3" alt="coming3 soon"  style="height: 200px;">
 <hr/>
 <button type="button" class="btn btn-warning"  onclick="wow('img1');">WOW!!</button>
  <button type="button" class="btn btn-primary"  onclick="wow('img2');">WOW!!</button>
   <button type="button" class="btn btn-danger"  onclick="wow('img3');">WOW!!</button>
    <button type="button" class="btn btn-success"  onclick="tclear('img3');">CLEAR!!</button>
     <hr/>
     <span id="spanid" style="color:red;font-size: 20px;"></span>
     <img src="" id="imaga" style="height: 200px;">
 </div> 
</body>
</html>