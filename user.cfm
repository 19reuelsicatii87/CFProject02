<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Detail</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body>

    <!--- Header --->
    <cfinclude template="/components/header.cfm"> 

    <div section="user-details" class="container mt-3">
        <cfset credMessages = "">
        <cfset profileMessages = "">
        <cfif structKeyExists(FORM, "fld_saveCredsForm")>
            <cfquery datasource="central_remote" name="rs_userSaveCreds" result="rs_userSaveCredsRecordCount">
                UPDATE tbl_user
                SET username = <cfqueryparam cfsqltype="varchar" value="#form.fld_usernameCredsForm#">,
                    password = <cfqueryparam cfsqltype="varchar" value="#form.fld_passwordCredsForm#">
                WHERE id = <cfqueryparam cfsqltype="integer" value="#form.fld_idCredsForm#">
            </cfquery>

            <cfif rs_userSaveCredsRecordCount.recordCount GT 0>
                <cfset credMessages = 1>
            <cfelse>
                <cfset credMessages = 0>
            </cfif>

        <cfelseif structKeyExists(FORM, "fld_deleteCredsForm")>
            <cfquery datasource="central_remote" name="rs_userSaveCreds" result="rs_userSaveCredsRecordCount">
                UPDATE tbl_user
                SET username = <cfqueryparam cfsqltype="varchar" value="#form.fld_usernameCredsForm#">,
                    password = <cfqueryparam cfsqltype="varchar" value="#form.fld_passwordCredsForm#">
                WHERE id = <cfqueryparam cfsqltype="integer" value="111111">
            </cfquery>

            <cfif rs_userSaveCredsRecordCount.recordCount GT 0>
                <cfset credMessages = 1>
            <cfelse>
                <cfset credMessages = 0>
            </cfif>

        <cfelseif structKeyExists(FORM, "fld_saveProfileForm")>
            <cfquery datasource="central_remote" name="rs_userSaveCreds" result="rs_userSaveProfileRecordCount">
                UPDATE tbl_user
                SET firstName = <cfqueryparam cfsqltype="varchar" value="#form.fld_firstNameProfileForm#">,
                    lastName = <cfqueryparam cfsqltype="varchar" value="#form.fld_lastNameProfileForm#">,
                    address1 = <cfqueryparam cfsqltype="varchar" value="#form.fld_address1ProfileForm#">,
                    address2 = <cfqueryparam cfsqltype="varchar" value="#form.fld_address2ProfileForm#">,
                    street = <cfqueryparam cfsqltype="varchar" value="#form.fld_streetProfileForm#">,
                    city = <cfqueryparam cfsqltype="varchar" value="#form.fld_cityProfileForm#">,
                    state = <cfqueryparam cfsqltype="varchar" value="#form.fld_stateProfileForm#">,
                    country = <cfqueryparam cfsqltype="varchar" value="#form.fld_countryProfileForm#">
                WHERE id = <cfqueryparam cfsqltype="integer" value="#form.fld_idProfileForm#">
            </cfquery>

            <cfif rs_userSaveProfileRecordCount.recordCount GT 0>
                <cfset profileMessages = 1>
            <cfelse>
                <cfset profileMessages = 0>
            </cfif>
        
        <cfelseif structKeyExists(FORM, "fld_deleteProfileForm")>
            <cfset profileMessages = 0>

        </cfif>

        <!--- Always Run:Retrieve Specific User from Database --->
        <cfquery datasource="central_remote" name="rs_user" result="rs_userRecordCount">
            SELECT * FROM tbl_user
            WHERE id = <cfqueryparam cfsqltype="integer" value="#url.id#">
        </cfquery>
        <!--- <cfdump var="#rs_user#"> --->

        <!--- User Credential Section --->
        <div class="col-lg-9 p-2">
            <div class="border bg-light" >
                <div class="d-flex align-items-center" style="height:2em">
                    <div class="fw-bold ms-1">Credentials</div>   
                </div>
            </div>
            <div class="border p-3">
                <cfform method="post">                    
                    <div class="row mb-4">
                        <cfoutput>
                            <input type="hidden" name="fld_idCredsForm" value="#rs_user.id#">
                        </cfoutput>
                        <div class="col-lg mb-1">
                            <div class="row">
                                <div class="col-lg-4 ">
                                    <label class="">Username</label>
                                </div>
                                <div class="col-lg-8">
                                    <cfoutput>
                                        <input class="w-100" type="text" value="#rs_user.username#" name="fld_usernameCredsForm" >
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
                                        <input class="w-100" type="text" value="#rs_user.password#" name="fld_passwordCredsForm">
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
                            <cfif credMessages EQ 1>
                                <small class="text-success">Credential updated successfully!</small>
                            <cfelseif credMessages EQ 0>
                                <small class="text-danger">Unable to update Credentials</small>
                            </cfif>
                        </div>
                    </div> 
                </cfform>
            </div>
        </div>

        <!--- User Profile Section --->
        <div class="col-lg-9 p-2">
        <div class="border bg-light" >
            <div class="d-flex align-items-center" style="height:2em">
                <div class="fw-bold ms-1">Profile Information</div>   
            </div>
        </div>
        <div class="border p-3">
            <cfform method="post">
                <cfoutput>
                    <input type="hidden" name="fld_idProfileForm" value="#rs_user.id#">
                </cfoutput>
                <div class="row mb-2">
                    <div class="col-lg mb-1">
                        <div class="row">
                            <div class="col-lg-4 ">
                                <label class="">First Name</label>
                            </div>
                            <div class="col-lg-8">
                                <cfoutput>
                                    <input class="w-100" type="text" value="#rs_user.firstName#" name="fld_firstNameProfileForm">
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
                                    <input class="w-100" type="text" value="#rs_user.lastName#" name="fld_lastNameProfileForm">
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
                            <input class="w-100" type="text" value="#rs_user.address1#" name="fld_address1ProfileForm">
                        </cfoutput>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2 ">
                        <label class="">Address 2</label>
                    </div>
                    <div class="col-lg-10">
                        <cfoutput>
                            <input class="w-100" type="text" value="#rs_user.address2#" name="fld_address2ProfileForm">
                        </cfoutput>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col-lg-2 ">
                        <label class="">Street</label>
                    </div>
                    <div class="col-lg-10">
                        <cfoutput>
                            <input class="w-100" type="text" value="#rs_user.street#" name="fld_streetProfileForm">
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
                                    <input class="w-100" type="text" value="#rs_user.city#" name="fld_cityProfileForm">
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
                                    <input class="w-100" type="text" value="#rs_user.state#" name="fld_stateProfileForm">
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
                                    <input class="w-100" type="text" value="#rs_user.country#" name="fld_countryProfileForm">
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
                        <cfif profileMessages EQ 1>
                            <small class="text-success">Profile updated successfully!</small>
                        <cfelseif profileMessages EQ 0>
                            <small class="text-danger">Unable to update Profile!</small>
                        </cfif>
                    </div>
                </div>
            </cfform>
        </div>
        </div>

        

    </div>





    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>

</html>