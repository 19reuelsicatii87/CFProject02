<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>

    <!--- Header --->
    <div Section="header" class="container mt-3">
        <div class="row py-3" style="background-color: #44619d">
            <div class="col-lg-2 d-flex justify-content-end pe-0">
                
                <a href="https://www.seoreseller.com">
                    <img src="/assets/img/logo-black.svg" class="img-fluid" width="200px" height="30px">
                </a>                
                
            </div>
            <div class="col-lg-6 d-flex align-items-center">
               
                <div class="d-flex flex-row align-items-center">
                    <div class="me-2">
                        <h5 class="text-white-50">Dashboard</h5>  
                    </div>
                    <div class="me-2">
                        <h5 class="text-white-50">Campaign</h5> 
                    </div>
                    <div class="">
                        <h5 class="text-white-50">User</h5> 
                    </div>
                </div>   
                
            </div>
            <div class="col-lg-4 d-flex align-items-center flex-row-reverse">
                
                <div class="">
                    <div class="ms-2">
                        <h5 class="text-white-50">Profile</h5>  
                    </div>                       
                </div>   
                
            </div>        
        </div>
    </div>

    <div section="users-list" class="container mt-3">

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
                            <a href="/user.cfm?id=#id#">
                                <i class="bi bi-pencil-square"></i>
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