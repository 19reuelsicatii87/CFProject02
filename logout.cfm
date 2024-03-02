
    <!--- <cfscript>

        // delete session attributes to logout
        //session.delete('userSession');
        //structDelete(session, "userSession");
        structClear(session);


        // Delay execution
        sleep(3000);
    
        // Redirect to the desired URL after the delay
        location("index.cfm", false, 301);

    </cfscript> --->



    <cfset structClear(session)>

    <!--- Redirect the user to the login page or any other desired page after logout --->
    <cflocation url="index.cfm" addtoken="false">