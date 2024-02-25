<cfcomponent displayname="user" hint="This is a service for user model">

   <!---Retrieve all User --->
   <cffunction name="retrieveUserAll"
      hint="Retrieve all User" returntype="struct"> 

      <cfquery name="rs_user" result="rs_userResult">
         SELECT * FROM tbl_user
      </cfquery>

      <cfset getUserAll = {user=#rs_user#, userResult=#rs_userResult#}>
      <cfreturn getUserAll>
      
   </cffunction>


   <!---Retrieve user based on ID--->
   <cffunction name="retrieveUserById"
      hint="Gets one user by ID from the database" returntype="struct">

      <cfargument name="id" type="numeric" required="yes" default="">      

      <cfquery name="rs_user" result="rs_userResult">
         SELECT * FROM tbl_user
         WHERE id = 
         <cfqueryparam cfsqltype="numeric" value="#id#">
      </cfquery>

      <cfset getUserById = {user=#rs_user#, userResult=#rs_userResult#}>
      <cfreturn getUserById>
      
   </cffunction>

    <!---Retrieve user based on Username and Password--->
   <cffunction name="retrieveUserByUsernamePassword"
      hint="Gets one user by Username and Password from the database" returntype="struct">

      <cfargument name="username" type="string" required="yes" default="">
      <cfargument name="password" type="string" required="yes" default="">

      <cfquery name="rs_user" result="rs_userResult">
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

      <cfquery name="rs_user" result="rs_userResult">
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

   <cfquery result="rs_userResult">
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

   <!---Update username and password based on ID --->
   <cffunction name="updateUserCred"
   hint="Update username and password based on ID to the database" returntype="struct">

   <cfargument name="id" type="numeric" required="yes" default=""> 
   <cfargument name="username" type="string" required="yes" default="">
   <cfargument name="password" type="string" required="yes" default="">

   <cfquery name="rs_user" result="rs_userResult">
      UPDATE tbl_user
      SET username = <cfqueryparam cfsqltype="varchar" value="#username#">,
          password = <cfqueryparam cfsqltype="varchar" value="#password#">
      WHERE id = <cfqueryparam cfsqltype="integer" value="#id#">
   </cfquery>
   

      <cfset updateUser = {userResult=#rs_userResult#}>
      <cfreturn updateUser>
 
   </cffunction>


      <!---Update firstName, lastName, address1, address2, street, city, state and country based on ID --->
      <cffunction name="updateUserProfile"
      hint="Update firstName, lastName, address1, address2, street, city, state and country based on ID to the database" returntype="struct">
   
      <cfargument name="id" type="numeric" required="yes" default=""> 
      <cfargument name="firstName" type="string" required="yes" default="">
      <cfargument name="lastName" type="string" required="yes" default="">
      <cfargument name="address1" type="string" required="yes" default="">
      <cfargument name="address2" type="string" required="yes" default="">
      <cfargument name="street" type="string" required="yes" default="">
      <cfargument name="city" type="string" required="yes" default="">
      <cfargument name="state" type="string" required="yes" default="">
      <cfargument name="country" type="string" required="yes" default="">
   
      <cfquery name="rs_user" result="rs_userResult">
         UPDATE tbl_user
         SET firstName = <cfqueryparam cfsqltype="varchar" value="#firstName#">,
             lastName = <cfqueryparam cfsqltype="varchar" value="#lastName#">,
             address1 = <cfqueryparam cfsqltype="varchar" value="#address1#">,
             address2 = <cfqueryparam cfsqltype="varchar" value="#address2#">,
             street = <cfqueryparam cfsqltype="varchar" value="#street#">,
             city = <cfqueryparam cfsqltype="varchar" value="#city#">,
             state = <cfqueryparam cfsqltype="varchar" value="#state#">,
             country = <cfqueryparam cfsqltype="varchar" value="#country#">
         WHERE id = <cfqueryparam cfsqltype="integer" value="#id#">
      </cfquery>
      
   
         <cfset updateUser = {userResult=#rs_userResult#}>
         <cfreturn updateUser>
    
      </cffunction>


   <!---Delete User based on ID --->
   <cffunction name="deleteUserById"
   hint="Delete User based on ID to the database" returntype="struct">

   <cfargument name="id" type="numeric" required="yes" default=""> 

   <cfquery name="rs_user" result="rs_userResult">
      DELETE FROM tbl_user
      WHERE id = <cfqueryparam cfsqltype="integer" value="#id#">
   </cfquery>
   

      <cfset deleteUserById = {userResult=#rs_userResult#}>
      <cfreturn deleteUserById>
 
   </cffunction>

 </cfcomponent>