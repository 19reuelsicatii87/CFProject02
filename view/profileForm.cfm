<section id="credential-form">
   <div class="col-lg-9 p-2">
      <div class="border bg-light" >
         <div class="d-flex align-items-center" style="height:2em">
            <div class="fw-bold ms-1">Profile Information</div>
         </div>
      </div>
      <div class="border p-3">
         <cfform method="post" action="user.cfm?id=#attributes.userById.user.id#">
            <cfoutput>
               <input type="hidden" name="fld_idProfileForm" value="#attributes.userById.user.id#">
            </cfoutput>
            <div class="row mb-2">
               <div class="col-lg mb-1">
                  <div class="row">
                     <div class="col-lg-4 ">
                        <label class="">First Name</label>
                     </div>
                     <div class="col-lg-8">
                        <cfoutput>
                           <input class="w-100" type="text" value="#attributes.userById.user.firstName#" name="fld_firstNameProfileForm">
                        </cfoutput>
                     </div>
                  </div>
               </div>
               <div class="col-lg mb-1">
                  <div class="row">
                     <div class="col-lg-3 d-flex justify-content-end px-0">
                        <label class="">Last Name</label>
                     </div>
                     <div class="col-lg-9">
                        <cfoutput>
                           <input class="w-100" type="text" value="#attributes.userById.user.lastName#" name="fld_lastNameProfileForm">
                        </cfoutput>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row mb-2">
               <div class="col-lg-2 ">
                  <label class="">Address 1</label>
               </div>
               <div class="col-lg-10">
                  <cfoutput>
                     <input class="w-100" type="text" value="#attributes.userById.user.address1#" name="fld_address1ProfileForm">
                  </cfoutput>
               </div>
            </div>
            <div class="row mb-2">
               <div class="col-lg-2 ">
                  <label class="">Address 2</label>
               </div>
               <div class="col-lg-10">
                  <cfoutput>
                     <input class="w-100" type="text" value="#attributes.userById.user.address2#" name="fld_address2ProfileForm">
                  </cfoutput>
               </div>
            </div>
            <div class="row mb-2">
               <div class="col-lg-2 ">
                  <label class="">Street</label>
               </div>
               <div class="col-lg-10">
                  <cfoutput>
                     <input class="w-100" type="text" value="#attributes.userById.user.street#" name="fld_streetProfileForm">
                  </cfoutput>
               </div>
            </div>
            <div class="row mb-4">
               <div class="col-lg-6 mb-1">
                  <div class="row">
                     <div class="col-lg-4 ">
                        <label class="">City</label>
                     </div>
                     <div class="col-lg-8">
                        <cfoutput>
                           <input class="w-100" type="text" value="#attributes.userById.user.city#" name="fld_cityProfileForm">
                        </cfoutput>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 mb-1">
                  <div class="row">
                     <div class="col-lg-3 d-flex justify-content-end px-0">
                        <label class="">State</label>
                     </div>
                     <div class="col-lg-9">
                        <cfoutput>
                           <input class="w-100" type="text" value="#attributes.userById.user.state#" name="fld_stateProfileForm">
                        </cfoutput>
                     </div>
                  </div>
               </div>
               <div class="col-lg-3 d-flex justify-content-end">
                  <div class="row">
                     <div class="col-lg-4 d-flex justify-content-end px-0">
                        <label class="">Country</label>
                     </div>
                     <div class="col-lg-8">
                        <cfoutput>
                           <input class="w-100" type="text" value="#attributes.userById.user.country#" name="fld_countryProfileForm">
                        </cfoutput>
                     </div>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-7">                 
               </div>
               <div class="col-lg-2 pe-1">
                  <button type="submit" class="btn btn-danger w-100"
                     name="fld_deleteProfileForm" id="fld_deleteProfileForm">Delete</button>
               </div>
               <div class="col-lg-3 ps-1">
                  <button type="submit" class="btn btn-primary w-100"
                     name="fld_saveProfileForm" id="fld_saveProfileForm">Save</button>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-7">                 
               </div>
               <div class="col-lg-5 d-flex flex-row-reverse">
                  <cfif #attributes.message# EQ 1>
                     <small class="text-success">Profile updated successfully!</small>
                     <cfelseif #attributes.message# EQ 0>
                     <small class="text-danger">Unable to update Profile!</small>
                  </cfif>
               </div>
            </div>
         </cfform>
      </div>
   </div>
</section >


    