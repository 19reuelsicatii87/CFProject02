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
    <cfinclude template="/components/header.cfm"> 

    <div section="users-list" class="container mt-3">

        <cfif structKeyExists(url, "method") and url.method eq "deleteUser">
            <cfquery datasource="central_remote" name="rs_userSaveCreds" result="rs_userSaveCredsRecordCount">
                DELETE FROM tbl_user
                WHERE id = <cfqueryparam cfsqltype="integer" value="#url.id#">
            </cfquery>
        </cfif>

        <!--- Retrieve All Users from Database --->
        <cfquery datasource="central_remote" name="rs_user" result="rs_userRecordCount">
            SELECT * FROM tbl_user
         </cfquery>

        <table class="table">
            <thead>
              <tr>
                <th scope="col">Username</th>
                <th scope="col">Name</th>
                <th scope="col" class="d-flex justify-content-center">Action</th>
              </tr>
            </thead>
            <tbody>
                <cfoutput query="rs_user">
                    <tr>
                        <td>#username#</td>
                        <td>#firstname# #lastname#</td>
                        <td class="d-flex justify-content-center">
                            <a class="me-2" href="/user.cfm?id=#id#">
                                <i class="bi bi-pencil-square"></i>
                            </a>
                            <a href="/users.cfm?method=deleteUser&id=#id#">
                                <i class="bi bi-trash"></i>
                            </a>
                        </td>
                    </tr>
                </cfoutput>              
            </tbody>
        </table>

    </div>





    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

</body>

</html>