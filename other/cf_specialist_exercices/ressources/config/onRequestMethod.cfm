<cfscript>
	public void function onRequest( required string targetPage ) 
	{ 
		if ( !DirectoryExists( variables.dbPath ) ) 
		{
            include "/other/cf_specialist_exercices/ressources/database/buildDB.cfm";
		}

        include arguments.targetPage;
    }
</cfscript>
