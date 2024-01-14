<h1>
	Client Side
</h1>
<cfparam name="form.age" default="0">

<cfif form.age LT 18>
	<cfset message = "#age# - You are underage. Please enter a valid age."/>
<cfelse>
	<cfset message = "#age# - You are of legal age.">
</cfif>

<cfform name="myForm" method="post">
	<cfinput type="text" name="age" validate="email" message="#message#">
	<br>
	<cfinput type="submit" name="ageSubmitBtn" value="Submit - Age">
</cfform>

<h1>
	Server Side
</h1>

<cfparam name="FORM.username" default="">
<cfparam name="FORM.password" default="">

<cfif structKeyExists(FORM, "submitBtn")>
	<!-- Server-side form validation -->
	<cfif len(trim(FORM.username)) eq 0 or len(trim(FORM.password)) eq 0>
		<p style="color: red;">
			Please fill in all required fields.
		</p>
	<cfelse>
		<!-- Process form when all fields are filled -->
		<!-- Your form processing logic goes here -->
		<p>
			Form submitted successfully.
		</p>
	</cfif>
</cfif>

<!-- Display the form -->
<cfform name="myForm" method="post">
	<cfinput type="text" name="username" required="yes" message="Please enter your username">
	<br>
	<cfinput type="password" name="password" required="yes" message="Please enter your password">
	<br>
	<cfinput type="submit" name="credSubmitBtn" value="Submit - Age">
</cfform>

<cfdump var="#FORM#" label="FORM fields">