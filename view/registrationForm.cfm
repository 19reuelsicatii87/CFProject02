<section id="registration-form">
    <div class="container">
        <!---ColdFusion Form--->
        <div class="row d-flex justify-content-center mt-5">
        <div class="col-lg-5 shadow m-5 p-5">
            <h3 class="d-flex justify-content-center mb-5">Create your Account!</h3>
            <!---Validate that Form has been submitted--->
            

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
</section>

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
