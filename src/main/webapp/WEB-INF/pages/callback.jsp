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
    
    function add(num1,num2){
    	return num1+num2;
    }
    
    let result=add(90,12);
    console.log(result);
    //anonymous function - function with out name is called ->anonymous
    
    var job  = function(num1,num2) {
    	                 return num1+num2;
                    }
    
    console.log(job);
    
    result=job(10,12);
    console.log(result);
    
    var run = function(){
    	  return 100;
    }
    picker( run);
    picker( function(){
    	  return 100;
    });
    
     function picker(callback){
    	 var ooo= callback();
    	 console.log(ooo);
     }
     
     
     var paa  = function(num1,num2) {
         return num1+num2;
    }
     
     var paa1  = function(num1,num2) {
         return num1+num2;
    }
     
     var paa2  = (num1,num2) => {
                           return num1+num2;
                    }
     
     var paa3  = (num1,num2) =>num1+num2;
  
     function mocha(callback){
    	   console.log(callback(12,13));
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