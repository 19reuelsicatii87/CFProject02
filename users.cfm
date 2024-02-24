<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users List</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>

    <!--- Header --->
    <cfmodule template="\view\headerIn.cfm">

    <div class="container mt-3">

        <cfif structKeyExists(url, "method") and url.method eq "deleteUser">
            <cfinvoke component="service.user"
            method="deleteUserById"
            returnvariable="deleteUserById">	
            <cfinvokeargument name="id" value=#url.id#>			
            </cfinvoke>	
        </cfif>

        <!--- Retrieve All Users from Database --->                
        <cfinvoke component="service.user"
        method="retrieveUserAll"
        returnvariable="retrieveUserAll">		
        </cfinvoke>	

        <!--- Users Table --->
        <cfmodule template="\view\userTable.cfm" userAll=#retrieveUserAll#>         

    </div>





    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>

</html>