<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8"/>
		<title>
			REDIRECT PAGE 02
		</title>
		<!-- Bootstrap CSS -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		      rel="stylesheet" 
		      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
		      crossorigin="anonymous">
	</head>
	
	<body>
	
		<h1>
			You will be redirected soon! - WithDelay Redirect
		</h1>
		<p>
			https://www.quackit.com/coldfusion/tutorial/coldfusion_redirect.cfm
		</p>
		
		<button id="myButton">Click Me - NoDelay Redirect</button>
		
		<script>
			// Wait for 7 seconds after the page loads
			window.onload = function() {
			setTimeout(delayedFunction, 60000);
			};
			
			// Function to be executed after 7 seconds
			function delayedFunction() {
			console.log("This function is executed after 7 seconds.");
			window.location.replace("https://www.quackit.com/coldfusion/tutorial/coldfusion_redirect.cfm");
			}
			
			
			// EventListener for Button
			document.getElementById("myButton").addEventListener("click", noDelayedFunction);
			
			// Function to be executed immediately
			function noDelayedFunction() {
			console.log("This function is executed immediately");
			window.location.replace("https://www.quackit.com/coldfusion/tutorial/coldfusion_redirect.cfm");
			}
		</script>
		
		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
		        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
		        crossorigin="anonymous">

		</script>
	</body>
</html>