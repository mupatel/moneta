<cfset art = application.artCFC.getart()>

<!DOCTYPE html>
<html>
<head>
    <title></title>
	<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1" />	
	<meta name="description" content="" />
	<meta name="keywords" content="" />

	<link rel="stylesheet" href="http://twitter.github.com/bootstrap/1.4.0/bootstrap.min.css">
	<!--[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			
		});	
	</script>
</head>
<body>
	<div class="container">
	<div class="page-header">
		<h1>Art</h1>
	</div>
		<cfoutput query="art">
			<p>
				<h3>#artname#</h3>
				Price: #dollarFormat(price)# <cfif isBoolean(issold) and issold><span class="label important">Sold</span></cfif><br/>
				#description#<br/>
				<img src="/cfdocs/images/artgallery/#largeimage#">
			</p>
		</cfoutput>
	</div>
</body>
</html>
