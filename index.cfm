<!DOCTYPE html>
<html>
   <head>
      <title>
         Login
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
      <!--- <cfinclude template="\view\headerOut.cfm"> --->



      

      <!---Validate that Form has been submitted--->
      <cfif structKeyExists(FORM, "fld_submitLoginForm")>

         <!--- <cfdump var="#FORM#"> --->

         <cfinvoke component="service.user"
            method="retrieveUserByUsernamePassword"
            returnvariable="userByUsernamePassword">		
               <cfinvokeargument name="username" value=#form.fld_username#>		
               <cfinvokeargument name="password" value=#form.fld_password#>	
         </cfinvoke>	

         <!--- <cfdump var="#userByUsernamePassword#"> --->

         <!---Server(Custom) Side Validation--->
         <cfif #userByUsernamePassword.userResult.recordCount# EQ 1>
            <cfmodule template="\view\modalNotif.cfm" title="Success" message="Login successfully!">         
         <cfelse>
            <cfmodule template="\view\modalNotif.cfm" title="Error Encountered" message="Username and Password are incorrect!">
         </cfif>


      </cfif>
      
      <!---Container: Login Section--->
      <cfmodule template="\view\loginForm.cfm">









      <!-- Option 1: Bootstrap Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
         integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
         crossorigin="anonymous"></script>
   </body>
</html>