<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8"/>
      <title>
         HTML FORM
      </title>
      <!-- Bootstrap CSS -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
         rel="stylesheet" 
         integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
         crossorigin="anonymous">
   </head>
   <body>
      <!---Boostrap 5--->
      <div class="container">
         <!---ColdFusion Form--->
         <div class="row mt-5">
            <div class="col-lg-8">
               <!---Form has been submitted--->
               <cfset ar_ErrorMessages = Arraynew(1)>
               <cfif structKeyExists(FORM, "fld_submitFormPostCF")>

                  <!---Server(Custom) Side Validation--->
                  <cfif form.fld_firstName EQ 'Blank'>
                     <cfset arrayappend(ar_ErrorMessages, "Please provide valid FirstName")>
                  </cfif>
                  <cfif form.fld_lastName EQ 'Blank'>
                     <cfset arrayappend(ar_ErrorMessages, "Please provide valid LastName")>
                  </cfif>
                  <cfif form.fld_emailAdd EQ '' OR NOT isvalid("email", form.fld_emailAdd)>
                     <cfset arrayappend(ar_ErrorMessages, "Please provide valid EmailAddress ")>
                  </cfif>

                  <!---Insert Data to DB if no ErrorMessage--->
                  <cfif isDefined('ar_ErrorMessages')>
                  
                     <!---Render Server Side ErrorMessage--->
                  <cfoutput>
                     <!-- Modal -->
                     <div id="errorModal" class="modal" tabindex="-1" style="display: block">
                        <div class="modal-dialog">
                           <div class="modal-content">
                              <div class="modal-header">
                                 <h5 class="modal-title">
                                    Modal title - Inside If
                                 </h5>
                                 <button type="button" class="btn-close" onclick="hideModal()" aria-label="Close">
                                 </button>
                              </div>
                              <div class="modal-body">
                                 <cfloop array="#ar_ErrorMessages#" index="message">
                                    <p>
                                       #message#
                                    </p>
                                 </cfloop>
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
                  <cfelseif ArrayisEmpty(ar_ErrorMessages)>
                  <!---Code Here to Insert Data to DB--->

                  </cfif>
               </cfif>

               <!---Form --->
               <h1>
                  ColdFusion Form - POST Method (Server Side Validation)
               </h1>
               <cfform id="frm_postFirstFormCF" name="frm_postFirstFormCF" method="post" action="formCF.cfm">
                  <!---<cfform id="frm_postFirstForm" name="frm_postFirstForm" method="post" 
                     action="actionFormCF.cfm">--->
                  <div class="mb-0">
                     <label for="fld_firstName" class="form-label">
                     First Name
                     </label>
                     <cfinput type="text" class="form-control" id="fld_firstName" name="fld_firstName"
                        placeholder="Reuel" required="true" message="FirstName provided is blank!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_lastName" class="form-label">
                     Last Name
                     </label>
                     <cfinput type="text" class="form-control" id="fld_lastName" name="fld_lastName"
                        placeholder="Sicat" required="true" message="LastName provided is blank!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_age" class="form-label">
                     Email Address
                     </label>
                     <cfinput type="text" class="form-control" id="fld_emailAdd" name="fld_emailAdd"
                        placeholder="reuel@sicat.com" required="true" message="Email provided is blank!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_age" class="form-label">
                     Age
                     </label>
                     <cfinput type="text" class="form-control" id="fld_age" name="fld_age"
                        placeholder="36" required="true" message="Age provided is blank!">
                  </div>
                  <div class="mt-2 mb-0">
                     <label for="fld_gender" class="form-label">
                     Gender
                     </label>
                     <div class="d-flex flex-row">
                        <div class="form-check mx-1">
                           <cfinput class="form-check-input" type="checkbox" value="" id="fld_genderMale"
                              name="fld_genderMale">
                           <label class="form-check-label" for="flexCheckDefault">
                           Male
                           </label>
                        </div>
                        <div class="form-check mx-1">
                           <cfinput class="form-check-input" type="checkbox" value="" id="fld_genderFemale"
                              name="fld_genderFemale"/>
                           <label class="form-check-label" for="flexCheckChecked">
                           Female
                           </label>
                        </div>
                     </div>
                  </div>
                  <div class="mt-3">
                     <cfinput type="submit" class="btn btn-primary w-100" name="fld_submitFormPostCF" 
                        id="fld_submitFormPostCF" value="Submit - POST">
                  </div>
               </cfform>
            </div>
            <div class="col-lg-4">
               <cfdump var="#FORM#" label="FORM fields">
               <cfdump var="#ar_ErrorMessages#" label="ErrorMessages">
            </div>
         </div>
         <div class="row mt-5">
            <div class="col-lg-8">
               <!---Form has been submitted--->
               <!---Server(Custom) Side Validation--->
               <!---Insert Data to DB if no ErrorMessage--->
               <!---Render Server Side ErrorMessage--->
               <!---<div id="errorModal" class="modal" tabindex="-1">
                  <div class="modal-dialog">
                      <div class="modal-content">
                          <div class="modal-header">
                              <h5 class="modal-title">
                                  Modal title - Inside If
                              </h5>
                              <button type="button" class="btn-close" onclick="hideModal()" 
                  aria-label="Close">
                              </button>
                          </div>
                          <div class="modal-body">
                              <cfloop array="#ar_ErrorMessages#" index="message">
                                  <p>
                                      #message#
                                  </p>
                              </cfloop>
                          </div>
                          <div class="modal-footer">
                              <button type="button" class="btn btn-secondary" 
                  onclick="hideModal()">
                                  Close
                              </button>
                          </div>
                      </div>
                  </div>
                  </div>--->
               <!---Form --->
               <h1>
                  ColdFusion Form - POST Method (Client Side Validation)
               </h1>
               <cfform id="frm_postFirstFormCF" name="frm_postFirstFormCF" method="post" action="formCF.cfm">
                  <!---<cfform id="frm_postFirstForm" name="frm_postFirstForm" method="post" 
                     action="actionFormCF.cfm">--->
                  <div class="mb-0">
                     <label for="fld_firstName" class="form-label">
                     First Name
                     </label>
                     <cfinput type="text" class="form-control" id="fld_firstName" name="fld_firstName"
                        placeholder="Reuel" required="true" message="FirstName provided is blank!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_lastName" class="form-label">
                     Last Name
                     </label>
                     <cfinput type="text" class="form-control" id="fld_lastName" name="fld_lastName"
                        placeholder="Sicat" required="true" message="LastName provided is blank!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_age" class="form-label">
                     Email Address
                     </label>
                     <cfinput type="text" class="form-control" id="fld_emailAdd" name="fld_emailAdd"
                        placeholder="reuel@sicat.com" required="true" message="Email provided is blank!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_age" class="form-label">
                     Age
                     </label>
                     <cfinput type="text" class="form-control" id="fld_age" name="fld_age"
                        placeholder="36" required="true" message="Age provided is blank!">
                  </div>
                  <div class="mt-2 mb-0">
                     <label for="fld_gender" class="form-label">
                     Gender
                     </label>
                     <div class="d-flex flex-row">
                        <div class="form-check mx-1">
                           <cfinput class="form-check-input" type="checkbox" value="" id="fld_genderMale"
                              name="fld_genderMale">
                           <label class="form-check-label" for="flexCheckDefault">
                           Male
                           </label>
                        </div>
                        <div class="form-check mx-1">
                           <cfinput class="form-check-input" type="checkbox" value="" id="fld_genderFemale"
                              name="fld_genderFemale"/>
                           <label class="form-check-label" for="flexCheckChecked">
                           Female
                           </label>
                        </div>
                     </div>
                  </div>
                  <div class="mt-3">
                     <cfinput type="submit" class="btn btn-primary w-100" name="fld_submitFormPostCF" 
                        id="fld_submitFormPostCF" value="Submit - POST" onclick="showModal(); return false;">
                  </div>
               </cfform>
            </div>
            <div class="col-lg-4">
               <cfdump var="#FORM#" label="FORM fields">
               <cfdump var="#ar_ErrorMessages#" label="ErrorMessages">
            </div>
         </div>
         <!---HTML (Vanilla) Form--->
         <div class="row mt-5">
            <div class="col-lg-8">
               <h1>
                  HTML (Vanilla) Form - POST Method
               </h1>
               <form id="frm_postFirstFormHTML" name="frm_postFirstFormHTML" method="post" 
                  action="actionForm.cfm">
                  <div class="mb-0">
                     <label for="fld_firstName" class="form-label">
                     First Name
                     </label>
                     <input type="text" class="form-control" id="fld_firstNamePost" name="fld_firstNamePost"
                        placeholder="Reuel" required="true" message="FirstName provided is 
                        invalid!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_lastName" class="form-label">
                     Last Name
                     </label>
                     <input type="text" class="form-control" id="fld_lastNamePost" name="fld_lastNamePost"
                        placeholder="Sicat" required="true" message="LastName provided is 
                        invalid!">
                  </div>
                  <div class="mb-0">
                     <label for="fld_age" class="form-label">
                     Age
                     </label>
                     <input type="text" class="form-control" id="fld_agePost" name="fld_agePost"
                        placeholder="36" required="true" message="Age provided is invalid!">
                  </div>
                  <div class="mt-3">
                     <button type="submit" class="btn btn-primary w-100" name="fld_submitFormPost" 
                        id="fld_submitFormPost">
                     Submit
                     </button>
                  </div>
               </form>
            </div>
            <div class="col-lg-4">
               <cfdump var="#FORM#" label="FORM firstName field">
            </div>
         </div>
      </div>
      <!---Clear form values when the page is refreshed--->
      <script>
         window.onload() = function() {
         document.getElementById("frm_postFirstFormCF").reset();
         }
      </script>
      <!---function submitForm(){
         var if ($('#myEmailId).val() == '');
           myErrArray.push('email issue');
         }
         if ( len (myErrArray) > 0 ){
         modal.show();
         } else {
         myFormId.submit();
         }
           --->
      <!-- Show and Hide Modal --> 
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