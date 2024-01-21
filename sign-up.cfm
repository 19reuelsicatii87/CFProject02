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
                        <a href="https://www.seoreseller.com" >Create an Account</a>
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
            <div class="col-lg-5 shadow m-5 p-5">
               <h3 class="d-flex justify-content-center mb-5">Create your Account!</h3>

               <!---Validate that Form has been submitted--->
               <cfset ar_ErrorMessages = Arraynew(1)>
               <cfif structKeyExists(FORM, "fld_submitSignUpForm")>

                  <cfquery datasource="central_remote" name="rs_user" result="rs_userRecordCount">
                     SELECT * FROM tbl_user
                     WHERE username = <cfqueryparam cfsqltype="varchar" value="#form.fld_email#">
                     AND firstName = <cfqueryparam cfsqltype="varchar" value="#form.fld_firstName#">
                     AND lastName = <cfqueryparam cfsqltype="varchar" value="#form.fld_lastName#">
                  </cfquery>

                  <!---Server(Custom) Side Validation--->
                  <cfif isValid("email", form.fld_email) AND rs_user.recordCount EQ 0>

                     <cfquery datasource="central_remote" >
                        INSERT INTO tbl_user
                        (username, password, firstname, lastName)
                        VALUES ('#form.fld_email#', '#form.fld_password#', '#form.fld_firstName#', '#form.fld_lastName#')
                     </cfquery>

                     <!--- Redirect Page here --->

                  <cfelseif rs_user.recordCount NEQ 0>
                     <cfoutput>
                        <!-- Modal -->
                        <div id="errorModal" class="modal" tabindex="-1" style="display: block">
                           <div class="modal-dialog">
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <h5 class="modal-title">
                                       Modal title - Account Exist
                                    </h5>
                                    <button type="button" class="btn-close" onclick="hideModal()" aria-label="Close">
                                    </button>
                                 </div>
                                 <div class="modal-body">
                                    <p>
                                       Account already Exist!
                                    </p>
                                 </div>
                                 <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" onclick="hideModal()">
                                    Close
                                    </button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </cfoutput>
                  

                  <cfelseif NOT isValid("email", form.fld_email)>
                     <cfoutput>
                        <!-- Modal -->
                        <div id="errorModal" class="modal" tabindex="-1" style="display: block">
                           <div class="modal-dialog">
                              <div class="modal-content">
                                 <div class="modal-header">
                                    <h5 class="modal-title">
                                       Modal title - Email Error
                                    </h5>
                                    <button type="button" class="btn-close" onclick="hideModal()" aria-label="Close">
                                    </button>
                                 </div>
                                 <div class="modal-body">
                                    <p>
                                       Email provided is not valid!
                                    </p>
                                 </div>
                                 <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" onclick="hideModal()">
                                    Close
                                    </button>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </cfoutput>
                  </cfif>
               </cfif>
               



               


               <cfform id="frm_login" name="frm_login" method="post">
                  <div class="mb-2">
                     <label for="fld_username">
                     Email
                     </label>
                     <input type="text" class="form-control" id="fld_email" name="fld_email"
                        placeholder="reuel@axadra.com" onfocusout="showErrorMessage(this, 'emailError')">
                     
                        <div id="emailError" class="col-lg-" style="display: none;">
                           <div class="d-flex flex-row-reverse">
                              <sub class="text-danger mt-1">Email provided is Blank!</sub>
                           </div>
                        </div>                     
                     
                  </div>
                  <div class="mb-2">
                     <div class="row">
                        <div class="col-lg-6">
                           <label for="fld_firstName">
                              FirstName
                           </label>
                           <input type="text" class="form-control" id="fld_firstName" name="fld_firstName"
                              placeholder="Reuel" onfocusout="showErrorMessage(this, 'firstNameError')">
                              
                              <div id="firstNameError" class="col-lg-" style="display: none;">
                                 <div class="d-flex flex-row-reverse">
                                    <sub class="text-danger mt-1">FirstName provided is Blank!</sub>
                                 </div>
                              </div> 
                        </div>
                        <div class="col-lg-6">
                           <label for="fld_lastName">
                              LastName
                           </label>
                           <input type="text" class="form-control" id="fld_lastName" name="fld_lastName"
                              placeholder="Sicat" onfocusout="showErrorMessage(this, 'lastNameError')">
                              
                              <div id="lastNameError" class="col-lg-" style="display: none;">
                                 <div class="d-flex flex-row-reverse">
                                    <sub class="text-danger mt-1">LastName provided is Blank!</sub>
                                 </div>
                              </div> 
                        </div>
                     </div>
                  </div>
                  <div class="mb-4">
                     <label for="fld_password">
                     Password
                     </label>
                     <input type="password" class="form-control" id="fld_password" name="fld_password"
                        onfocusout="showErrorMessage(this, 'passwordError')">

                        <div id="passwordError" class="col-lg-" style="display: none;">
                           <div class="d-flex flex-row-reverse">
                              <sub class="text-danger mt-1">Password provided is Blank!</sub>
                           </div>
                        </div>

                  </div>
                  <div class="mt-1">
                     <cfinput type="submit" class="btn btn-primary w-100" name="fld_submitSignUpForm" 
                        id="fld_submitSignUpForm" value="Create An Account" disabled="">
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


      <!-- Enable 'Create An Account' button if all fields are populated -->
      <script>

            var emailInput = document.getElementById('fld_email');
            var firstNameInput = document.getElementById('fld_firstName');
            var lastNameInput = document.getElementById('fld_lastName');
            var passwordInput = document.getElementById('fld_password');
            var submitButton = document.getElementById('fld_submitSignUpForm');

            // Add event listeners to the input fields
            emailInput.addEventListener('input', checkInputs);
            firstNameInput.addEventListener('input', checkInputs);
            lastNameInput.addEventListener('input', checkInputs);
            passwordInput.addEventListener('input', checkInputs);

            function checkInputs() {
            // Check if both username and password fields have content
            var isEmailFilled = emailInput.value.trim() !== '';
            var isFirstNameFilled = firstNameInput.value.trim() !== '';
            var isLastNameFilled = lastNameInput.value.trim() !== '';
            var isPasswordFilled = passwordInput.value.trim() !== '';

            // Enable the submit button only if both fields are filled
            submitButton.disabled = !(isEmailFilled && isFirstNameFilled && isLastNameFilled && isPasswordFilled);
            }
         
      </script>

      <!-- Hide Modal --> 
      <script>
         // function showModal() {
         // document.getElementById("errorModal").style.display = "block";
         // }
         function hideModal() {
         document.getElementById("errorModal").style.display = "none";
         }
      </script>




      <!-- Option 1: Bootstrap Bundle with Popper -->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
         integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
         crossorigin="anonymous"></script>
   </body>
</html>