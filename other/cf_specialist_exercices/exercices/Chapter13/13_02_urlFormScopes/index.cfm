<cf_HeaderAndFooter pageTitle="Home">
	<cfoutput>


		<cfif IsDefined( "url.statusMsg" )>
			<div class="status-box">
				<cfoutput encodeFor="html">#url.statusMsg#</cfoutput>
			</div>
		</cfif>

		
		<p>#application.companyName# Blog App.</p>
		<p>Please log in:</p>
	
		<form name="frmLogin" id="frmLogin" method="get" action="loginuser.cfm">

			<div class="full-width">
				<label for="username">Username</label>
				<input type="email" name="username" id="username" value="" autofocus placeholder="Email">
			</div>
			<div class="full-width">
				<label for="password">Password</label>
				<input type="password" name="password" id="password" value="" placeholder="Password">
			</div>
			<div>
				<input type="submit" name="btnLogin" id="btnLogin" value="Log In">
			</div>
		</form>
	</cfoutput>
</cf_HeaderAndFooter>
