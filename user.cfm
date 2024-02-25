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
    <cfmodule template="\view\headerIn.cfm">

    <div section="user-details" class="container mt-3">
        <cfset credMessages = "">
        <cfset profileMessages = "">
        <cfif structKeyExists(FORM, "fld_saveCredsForm")>

            <cfinvoke component="service.user"
            method="updateUserCred"
            returnvariable="updateUserByIdCred">		
               <cfinvokeargument name="id" value=#form.fld_idCredsForm#>		
               <cfinvokeargument name="username" value=#form.fld_usernameCredsForm#>
               <cfinvokeargument name="password" value=#form.fld_passwordCredsForm#>
            </cfinvoke>	

            <cfif updateUserByIdCred.userResult.recordCount GT 0>
                <cfset credMessages = 1>
            <cfelse>
                <cfset credMessages = 0>
            </cfif>

        <cfelseif structKeyExists(FORM, "fld_deleteCredsForm")>
            <cfinvoke component="service.user"
            method="updateUserCred"
            returnvariable="updateUserByIdCred">		
               <cfinvokeargument name="id" value="111111111111">		
               <cfinvokeargument name="username" value=#form.fld_usernameCredsForm#>
               <cfinvokeargument name="password" value=#form.fld_passwordCredsForm#>
            </cfinvoke>

            <cfif updateUserByIdCred.userResult.recordCount GT 0>
                <cfset credMessages = 1>
            <cfelse>
                <cfset credMessages = 0>
            </cfif>

        <cfelseif structKeyExists(FORM, "fld_saveProfileForm")>

            <!--- <cfinvoke component="service.user"
            method="updateUserProfile"
            returnvariable="updateUserByIdProfile">		
               <cfinvokeargument name="id" value=#form.fld_idProfileForm#>		
               <cfinvokeargument name="firstName" value=#form.fld_firstNameProfileForm#>
               <cfinvokeargument name="lastName" value=#form.fld_lastNameProfileForm#>
               <cfinvokeargument name="address1" value=#form.fld_address1ProfileForm#>
               <cfinvokeargument name="address2" value=#form.fld_address2ProfileForm#>
               <cfinvokeargument name="street" value=#form.fld_streetProfileForm#>
               <cfinvokeargument name="city" value=#form.fld_cityProfileForm#>
               <cfinvokeargument name="state" value=#form.fld_stateProfileForm#>
               <cfinvokeargument name="country" value=#form.fld_countryProfileForm#>
            </cfinvoke>	 --->

            <!--- Service define over Application.cfc --->
            <cfset updateUserByIdProfile=application.userService.updateUserProfile(
                #form.fld_idProfileForm#,
                #form.fld_firstNameProfileForm#,
                #form.fld_lastNameProfileForm#,
                #form.fld_address1ProfileForm#,
                #form.fld_address2ProfileForm#,
                #form.fld_streetProfileForm#,
                #form.fld_cityProfileForm#,
                #form.fld_stateProfileForm#,
                #form.fld_countryProfileForm#)>

            <cfif updateUserByIdProfile.userResult.recordCount GT 0>
                <cfset profileMessages = 1>
            <cfelse>
                <cfset profileMessages = 0>
            </cfif>
        
        <cfelseif structKeyExists(FORM, "fld_deleteProfileForm")>
            <cfset profileMessages = 0>

        </cfif>

        
        <!--- Always Run:Retrieve Specific User from Database --->
        <!--- <cfinvoke component="service.user"
        method="retrieveUserById"
        returnvariable="retrieveUserById">		
           <cfinvokeargument name="id" value=#url.id#>		
        </cfinvoke>	 --->

        <!--- Service define over Application.cfc --->
        <cfset retrieveUserById=application.userService.retrieveUserById(#url.id#)>

        <!--- <cfdump var="#retrieveUserById#"> --->

        <!--- User Credential Section --->
        <cfmodule template="\view\credentialForm.cfm" userById=#retrieveUserById# message="#credMessages#">         

        <!--- User Profile Section --->
        <cfmodule template="\view\profileForm.cfm" userById=#retrieveUserById# message=#profileMessages#>  

        

    </div>

    <div style="background-color: blue">
        <cfdump var="#session#">
        <cfoutput>
            Session ID: #session.CFID#
            <br>
            Session TOKEN: #session.CFTOKEN#
            <br>
            Session ID-TOKEN: #session.CFID#-#session.CFTOKEN#
        </cfoutput>
    </div>





    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>

</html>