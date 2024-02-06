<!DOCTYPE html>
<html>
   <head>
      <title>
         Sign Up
      </title>
      <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
         rel="stylesheet" 
         integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
         crossorigin="anonymous">


      

   </head>
   <body>

      <!---Container: Header Section--->
      <cfmodule template="\view\headerOut.cfm">

      <!---Validate that Form has been submitted--->
      <cfif structKeyExists(FORM, "fld_submitSignUpForm")>

         <cfinvoke component="service.user"
         method="retrieveUserByUsernameFirstNameLastName"
         returnvariable="userByUsernameFirstNameLastName">		
            <cfinvokeargument name="username" value=#form.fld_email#>		
            <cfinvokeargument name="firstName" value=#form.fld_firstName#>	
            <cfinvokeargument name="lastName" value=#form.fld_lastName#>
         </cfinvoke>	
         
         <!---Server(Custom) Side Validation--->
         <cfif isValid("email", form.fld_email) AND userByUsernameFirstNameLastName.userResult.recordCount EQ 0>

         <cfinvoke component="service.user"
         method="insertUser"
         returnvariable="insertedUser">		
            <cfinvokeargument name="username" value=#form.fld_email#>		
            <cfinvokeargument name="password" value=#form.fld_password#>
            <cfinvokeargument name="firstName" value=#form.fld_firstName#>	
            <cfinvokeargument name="lastName" value=#form.fld_lastName#>
         </cfinvoke>	

         <cfmodule template="\view\modalNotif.cfm" title="Success" message="Account added Successfully!">         

         <!--- Client-Side: Redirect Page here --->
         <cfset redirectpage = true>
         
         <cfelseif isValid("email", form.fld_email) AND userByUsernameFirstNameLastName.userResult.recordCount NEQ 0>
         <cfoutput>
            <!-- Modal: Account Exist  "Account already Exist!" -->
            <cfmodule template="\view\modalNotif.cfm" title="Error" message="Account already Exist!">         
         </cfoutput>
         
         <cfelseif NOT isValid("email", form.fld_email)>
         <cfoutput>
            <!-- Modal: Email Error  "Email provided is not valid!" -->
            <cfmodule template="\view\modalNotif.cfm" title="Error" message="Email provided is not valid!">         
         </cfoutput>
         </cfif>
      </cfif>


   <!---Container: Header Section--->
   <cfmodule template="\view\registrationForm.cfm">

   <cfif isDefined('redirectpage') and redirectpage>
      <script>
         // JavaScript function to redirect page
         window.onload = function() {
            setTimeout(function() {
                  window.location.href = "/users.cfm";
               }, 5000);            
         }
      </script>
   </cfif>





   <!-- Option 1: Bootstrap Bundle with Popper -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
      crossorigin="anonymous"></script>
   </body>
</html>