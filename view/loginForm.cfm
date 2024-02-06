<section id="login-form">
    <div class="container">
       <!---ColdFusion Form---> 
       <div class="row d-flex justify-content-center mt-5">
          <div class="col-lg-4 shadow m-5 p-5">
             <h3 class="d-flex justify-content-center mb-5">Welcome back!</h3>
             <cfform id="frm_login" name="frm_login" method="post" action="index.cfm">
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
                      id="fld_submitLoginForm" value="Sign In" disabled="">
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
 </section >


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

   <!-- Enable 'Sign In' button if all fields are populated -->
   <script>

      var usernameInput = document.getElementById('fld_username');
      var passwordNameInput = document.getElementById('fld_password');
      var submitButton = document.getElementById('fld_submitLoginForm');

      // Add event listeners to the input fields
      usernameInput.addEventListener('input', checkInputs);
      passwordNameInput.addEventListener('input', checkInputs);

      function checkInputs() {
      // Check if both username and password fields have content
      var isUsernameFilled = usernameInput.value.trim() !== '';
      var isPasswordFilled = passwordNameInput.value.trim() !== '';

      // Enable the submit button only if both fields are filled
      submitButton.disabled = !(isUsernameFilled && isPasswordFilled);
      }
         
   </script>