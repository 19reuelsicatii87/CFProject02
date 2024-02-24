
<section id="credential-form">
   <div class="col-lg-9 p-2">
      <div class="border bg-light" >
         <div class="d-flex align-items-center" style="height:2em">
            <div class="fw-bold ms-1">Credentials</div>
         </div>
      </div>
      <div class="border p-3">
         <cfform method="post" action="user.cfm?id=#attributes.userById.user.id#"> 
            <div class="row mb-4">
               <cfoutput>
                  <input type="hidden" name="fld_idCredsForm" value="#attributes.userById.user.id#">
               </cfoutput>
               <div class="col-lg mb-1">
                  <div class="row">
                     <div class="col-lg-4 ">
                        <label class="">Username</label>
                     </div>
                     <div class="col-lg-8">
                        <cfoutput>
                           <input class="w-100" type="text" value="#attributes.userById.user.username#" name="fld_usernameCredsForm" >
                        </cfoutput>
                     </div>
                  </div>
               </div>
               <div class="col-lg mb-1">
                  <div class="row">
                     <div class="col-lg-3 d-flex justify-content-end px-0">
                        <label class="">Password</label>
                     </div>
                     <div class="col-lg-9">
                        <cfoutput>
                           <input class="w-100" type="text" value="#attributes.userById.user.password#" name="fld_passwordCredsForm">
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
                     name="fld_deleteCredsForm">Delete</button>
               </div>
               <div class="col-lg-3 ps-1">
                  <button type="submit" class="btn btn-primary w-100"
                     name="fld_saveCredsForm">Save</button>
               </div>
            </div>
            <div class="row">
               <div class="col-lg-7">                 
               </div>
               <div class="col-lg-5 d-flex flex-row-reverse">
                  <cfif #attributes.message# EQ 1>
                     <small class="text-success">Credential updated successfully!</small>
                  <cfelseif #attributes.message# EQ 0>
                     <small class="text-danger">Unable to update Credentials</small>
                  </cfif>
               </div>
            </div>
         </cfform>
      </div>
   </div>
</section >


   