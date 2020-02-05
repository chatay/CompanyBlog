<cfprocessingdirective pageEncoding="utf-8">
<cfparam name = "form.hediye_gonderenAd" default = "">
<cfparam name = "form.hediye_aliciAd" default = "">
<cfparam name = "form.hediye_yakinlik" default = "">
<cfparam name = "form.hediye_hediye" default = "">
<cfparam name = "form.hediye_adres" default = "">
<cfparam name = "form.hediye_not" default = "">


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://wiki.workcube.com/Education/catalyst.css">
    <link rel="stylesheet" href="acme.css" type="text/css" />
    
    <title>Procenne</title>
</head>

<body>
	
	<div style="text-align: center;">
                    <nav class="navbar">
                            <div class="logo" style="text-align:center">
                                <a href="#"><img src="Pictures/procenne.jpg"/></a>
                                <h4>Procenne görüş ve bildiri sayfasına hoşgeldiniz.</h4>
                            </div>
                     </nav>
    </div>
               
  <cfform name="procenneBlog" action="" method="post">
  	<cfoutput>
  		<div class="row">
  		<div class="col-md-6 col-xs-12" type="column" index = "1" sort="true" id="aaa">
	  		<div class="form-group" id="baslik">
	  			<label class="col col-6 col-xs-2" >
		                DÜŞÜNCELERİNİZ:
		    	</label>
		    		 <div class="col col-6 col-xs-10">
	                           <input type = "text" name="hediye_gonderenAd" id = "hediye_gonderenAd" value="#form.hediye_gonderenAd#" placeholder="Ad ve Soyad Giriniz">
	                           <input type = "hidden" name = "is_submit" id = "is_submit" value = "1">
	        		 </div>
  		   </div>   	
    	</div>
     </div>
  	</cfoutput>
  </cfform>            
               
</body>
</html>
	
</html>
