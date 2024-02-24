<cfscript>

	variables.dbPath 	   = expandPath("/ressources/database/Derby/");

	this.name = "ColdFusion-Training";
	this.applicationTimeout = createTimeSpan(0,2,0,0); //2h
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,45,0); //45 min
	this.datasource = "central_remote";

	this.datasources = {
        central_remote = {
            url = "jdbc:derby:#variables.dbPath#;create=true;MaxPooledStatements=300", 
            driver = "Apache Derby Embedded"
        }
	};
</cfscript>
 