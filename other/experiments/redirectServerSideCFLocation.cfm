<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="refresh" content="7; url='https://www.quackit.com/coldfusion/tutorial/coldfusion_redirect.cfm'" />
		<title>
			REDIRECT PAGE 01
		</title>
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		      rel="stylesheet" 
		      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		      crossorigin="anonymous">
	</head>
	
	<body>
		
		
		
		<!---Once the page is requested, server returns the REDIRECT page hence this part will no longer rendered---> 
		<h1>You will be redirected soon!</h1>
		<p>
			https://www.quackit.com/coldfusion/tutorial/coldfusion_redirect.cfm
		</p>
		
		<cflocation url="https://www.quackit.com/coldfusion/tutorial/coldfusion_redirect.cfm" addToken="false" statusCode="302">
	
		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		        crossorigin="anonymous">

		</script>
	</body>
</html>