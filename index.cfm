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
      <div class="container-fluid border-bottom border-3">
         <div class="container mt-3">

            <!--- Desktop View --->
            <div id='viewport-hidden-sm-fixedTop' className="d-none d-lg-block">
               <div class="row">
                  <div class="col-lg-6">
                     <div class="d-flex flex-row bd-highlight mb-3">
                        <a href="https://www.seoreseller.com">
                           <img src="/assets/img/logo-black.svg" class="img-fluid" width="200px" height="30px">
                        </a>
                     </div>
                  </div>
                  <div class="col-lg-6 p-1">
                     <div class="d-flex flex-row-reverse bd-highlight">                     
                        <a href="/sign-up.cfm" >Create an Account</a>
                        <p class="me-1">New to SEOReseller?</p>
                     </div>
                  </div>
               </div>
            </div>


            <!--- Mobile View --->
            <div id='viewport-shown-sm' className="d-lg-none">
               <!--- Tobe Coded --->
            </div>

         </div>
      </div>


      <!---Container: Login Section--->
      <div class="container">
         <!---ColdFusion Form--->
         <div class="row d-flex justify-content-center mt-5">
            <div class="col-lg-4 shadow m-5 p-5">
               <h3 class="d-flex justify-content-center mb-5">Welcome back!</h3>

               <!---Validate that Form has been submitted--->
               <cfset userExist = false>
               <cfif structKeyExists(FORM, "fld_submitFormPostCF")>

                  <cfquery datasource="central" name="rs_user">
                     SELECT * FROM tbl_user
                     WHERE username <cfqueryparam cfsqltype="varchar" value="#form.fld_username#">
                     AND username <cfqueryparam cfsqltype="varchar" value="#form.fld_password#">
                  </cfquery>



                  <!---Server(Custom) Side Validation--->
                  <cfif form.fld_username NEQ #rs_user.username#>
                     <cfset arrayappend(ar_ErrorMessages, "Please provide valid FirstName")>
                  </cfif>
                  <cfif form.fld_lastName EQ 'Blank'>
                     <cfset arrayappend(ar_ErrorMessages, "Please provide valid LastName")>
                  </cfif>



               </cfif>


               <cfform id="frm_login" name="frm_login" method="post" action="formCF.cfm">
                  <div class="mb-2">
                     <label for="fld_username">
                     Username
                     </label>
                     <input type="text" class="form-control" id="fld_username" name="fld_username"
                        placeholder="reuel@axadra.com" onfocusout="showErrorMessage(this, 'usernameError')">
                     
                        <div id="usernameError" class="col-lg-" style="display: none;">
                           <div class="d-flex flex-row-reverse">
                              <small class="text-danger">Username provided is Blank!</small>
                           </div>
                        </div>                     
                     
                  </div>
                  <div class="mb-2">
                     <label for="fld_password">
                     Password
                     </label>
                     <input type="password" class="form-control" id="fld_password" name="fld_password"
                        onfocusout="showErrorMessage(this, 'passwordError')">

                        <div id="passwordError" class="col-lg-" style="display: none;">
                           <div class="d-flex flex-row-reverse">
                              <small class="text-danger">Password provided is Blank!</small>
                           </div>
                        </div>

                  </div>
                  <div class="row mt-4">
                     <div class="col-lg-6">
                        <div class="d-flex flex-row">
                           <cfinput type="checkbox" class="me-1" id="fld_remember" name="fld_remember">
                           <small class="mb-0">Remember Me</small>
                        </div>
                     </div>
                     <div class="col-lg-6">
                        <div class="d-flex flex-row-reverse">
                           <a href="https://account.seoreseller.com/forgot-password" class="forgot-password-link"><small>Forgot Password?</small></a>
                        </div>
                     </div>
                  </div>
                  <div class="mt-1">
                     <cfinput type="submit" class="btn btn-primary w-100" name="fld_submitLoginForm" 
                        id="fld_submitLoginForm" value="Sign In">
                  </div>
                  <div class="mt-3 text-center">
                     <small>By logging in, you agree to SEOReseller's 
                        <a href="https://www.seoreseller.com/terms-use">Terms of Use</a> and 
                        <a href="https://www.seoreseller.com/privacy-policy">Privacy Policy</a>.
                     </small>
                  </div>
               </cfform>
            </div>
         </div>
      </div>



      <!-- FrontEnd Validation -->
      <script>

         function showErrorMessage(elem, errorElemId) {  

            console.log("show length - " + elem.value.length );

            if (elem.value.length < 1) {
               console.log("condition SHOW is called for " + errorElemId);
               var errorDiv = document.getElementById(errorElemId);
               errorDiv.style.display = "block";  
            }

            else if (elem.value.length > 0) {
               console.log("condition HIDE is called for " + errorElemId);
               var errorDiv = document.getElementById(errorElemId);
               errorDiv.style.display = "none";  
            }
      
         }


         
      </script>





      <!-- Option 1: Bootstrap Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
         integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
         crossorigin="anonymous"></script>
   </body>
</html>