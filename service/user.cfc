<cfcomponent displayname="user" hint="This is a service for user model">

    <!---Retrieve user based on Username and Password--->
   <cffunction name="retrieveUserByUsernamePassword"
      hint="Gets one user by Username and Password from the database" returntype="struct">

      <cfargument name="username" type="string" required="yes" default="">
      <cfargument name="password" type="string" required="yes" default="">

      <cfquery datasource="central_remote" name="rs_user" result="rs_userResult">
         SELECT * FROM tbl_user
         WHERE username = <cfqueryparam cfsqltype="varchar" value="#username#">
         AND password = <cfqueryparam cfsqltype="varchar" value="#password#">
      </cfquery>

      <cfset getUserByUsernamePassword = {user=#rs_user#, userResult=#rs_userResult#}>
      <cfreturn getUserByUsernamePassword>

   </cffunction>

   <!---Retrieve user based on Username, FirstName and LastName--->
   <cffunction name="retrieveUserByUsernameFirstNameLastName"
      hint="Gets one user by Username, FirstName and LastName from the database" returntype="struct">

      <cfargument name="username" type="string" required="yes" default="">
      <cfargument name="firstName" type="string" required="yes" default="">
      <cfargument name="lastName" type="string" required="yes" default="">

      <cfquery datasource="central_remote" name="rs_user" result="rs_userResult">
            SELECT * FROM tbl_user
            WHERE username = <cfqueryparam cfsqltype="varchar" value="#username#">
            AND firstName = <cfqueryparam cfsqltype="varchar" value="#firstName#">
            AND lastName = <cfqueryparam cfsqltype="varchar" value="#lastName#">
      </cfquery>

      <cfset getUserByUsernameFirstNameLastName = {user=#rs_user#, userResult=#rs_userResult#}>
      <cfreturn getUserByUsernameFirstNameLastName>
 
   </cffunction>

   <!---Insert user with Username, Password, FirstName and LastName--->
   <cffunction name="insertUser"
   hint="Insert user with Username, Password, FirstName and LastName to the database" returntype="struct">

   <cfargument name="username" type="string" required="yes" default="">
   <cfargument name="password" type="string" required="yes" default="">
   <cfargument name="firstName" type="string" required="yes" default="">
   <cfargument name="lastName" type="string" required="yes" default="">

   <cfquery datasource="central_remote" result="rs_userResult">
         INSERT INTO tbl_user
            (username, password, firstname, lastName)
            VALUES (
            <cfqueryparam cfsqltype="varchar" value="#username#">,
            <cfqueryparam cfsqltype="varchar" value="#password#">,
            <cfqueryparam cfsqltype="varchar" value="#firstName#">,
            <cfqueryparam cfsqltype="varchar" value="#lastName#">
            )

      </cfquery>

      <cfset insertUser = {userResult=#rs_userResult#}>
      <cfreturn insertUser>
 
   </cffunction>

 </cfcomponent>