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
    function chill() {
    	alert("This is chill!!!!!!!");
    }
  
        /* class Customer {
        	 String name;
        	 String email;
        	 int age;
        }          
        Customer c=new Customer(); */
        //first way to create Object in JavaScript
         var  c ={};
         c.name="Nagen";
         console.log(c);
         c.email="nagen@gmail.com";
         c.age=23;
         console.log(c);
         //Second
         var cc = {name:'Nagen' , email : 'nagen@gmail.com',age:23}
         console.log(cc);
         
         var ccc = {'name':'Nagen' , 'email' : 'nagen@gmail.com','age':23}
         console.log(ccc);
         
         //Third way of creating instance using constructor Function
         
         function  Customer(name, email , age){
        	  this.name=name;
        	  this.email=email;
        	  this.age=age;
         }
         
        var c1=new Customer('Nagen','nagen@gmail.com',23);
        var c2=new Customer('Aisha','aisha@gmail.com',33);
        var c3=new Customer('Jhon','jhongmail.com',53);
        console.log(c1);
        console.log(c2);
        console.log(c3);
         
  </script>
  
</head>
<body>
	<div class="container">
    <h1>Hello Me!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!</h1>
    <img src="" id="img1" alt="coming1 soon"   style="height: 200px;">
    <img src="" id="img2" alt="coming2 soon"   style="height: 200px;">
     <img src="" id="img3" alt="coming3 soon"  style="height: 200px;">
 <hr/>
 <button type="button" class="btn btn-warning"  onclick="chill();">WOW!!</button>
  <button type="button" class="btn btn-primary"  onclick="wow('img2');">WOW!!</button>
   <button type="button" class="btn btn-danger"  onclick="wow('img3');">WOW!!</button>
    <button type="button" class="btn btn-success"  onclick="tclear('img3');">CLEAR!!</button>
     <hr/>
     <span id="spanid" style="color:red;font-size: 20px;"></span>
     <img src="" id="imaga" style="height: 200px;">
 </div> 
</body>
</html>