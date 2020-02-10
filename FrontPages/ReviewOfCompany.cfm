



<!--- The cfajaxproxy tag creates a client-side proxy for the emp CFC. 
View the generated page source to see the resulting JavaScript. 
The emp CFC is in the components subdirectory of the directory that
contains this page. --->
<cfajaxproxy cfc="ProcenneBlog.Model.CheckTheRequest" jsclassname="_req"> 

<!--- 
		cfprocessingdirective In general, one should no longer need to use this tag to specify the page encoding
 		as the ColdFusion server should be able to identify it automatically.
 
 --->
<cfprocessingdirective pageEncoding="utf-8">
<cfparam name = "form.viewOfAnEmployee" default = "">


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://wiki.workcube.com/Education/catalyst.css">
    <link rel="stylesheet" href="acme.css" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.3.1.min.js"></script>
    
    <title>Procenne</title>
</head>

<script type="text/javascript">
	/* isDefined() will look through a bunch of scopes 
	 looking for a variable fo that name to exist,
	 whereas structKeyExists() just does what it's told.  */
	<cfif isdefined("form.isSubmitted") AND len(form.isSubmitted)>
	
	console.log("yes submitted!")
	$.ajax({

                type: "GET",

                url: "../Model/CheckTheRequest.cfc",

                data:{

                    method: "_req"

                },

                dataType: "json",

                success: function(data){

                    document.getElementById("result").value = data.VAR1;

               }

     });
	
	<cfelse>
	
	console.log("nope!")
	</cfif>

	function RemoteCFC()
	{
		this.Name ="";
	}
	
	var myErrorHandler = function(statusCode, statusMsg) 
		{ 
		alert('Status: ' + statusCode + ', ' + statusMsg); 
		} 
 
 
</script>

<body>
	<div class="jumbotron text-center" style="margin-bottom:0;text-align:center;" >
                <h4>Procenne görüş ve bildiri sayfasına hoşgeldiniz</h4>
             	<a href="#"><img src="../Pictures/procenne.jpg"/></a>
    </div>
               
  <cfform name="procenneBlog" action="" method="post">
  	<cfoutput>
  		<div class="row">
  		<div class="col-md-6 col-md-6 col-xs-12" type="column" index = "1" sort="true" id="aaa">
	  		<div class="form-group col col-12 col-xs-12" id="baslik">
	  			<label class="col col-4 col-xs-2">
		                DÜŞÜNCELERİNİZ:
		         </label>  
	    		 <div class="col col-6 col-xs-10">
	     	              <textarea rows="6" cols="50" type = "text" name="hediye_gonderenAd" id = "viewOfAnEmployee" value="#form.viewOfAnEmployee#" placeholder="Düşüncelerinizi giriniz."></textarea>
	                      
	    		 </div>
	    		 <div class="col-4 col-6 col-xs-10">
	    		 	<input type = "hidden" name = "isSubmitted" id = "isSubmitted" value = "1">
	                   <input type="submit" name="btnSend" id="btnSend" class="btn btn-success">
	                   
	             </div>
	             <div>
	             <textarea id="result">
	             	some text
	             </textarea>
	             </div>
	             
  		   </div>   	
    	</div>
     </div>
  	</cfoutput>
  </cfform>            
               
</body>
</html>
