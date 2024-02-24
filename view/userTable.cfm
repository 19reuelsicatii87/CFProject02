<!--- <cfdump var="#attributes.userAll#"> --->

<section id="users-list">
   <table class="table">
      <thead>
        <tr>
          <th scope="col">Username</th>
          <th scope="col">Name</th>
          <th scope="col" class="d-flex justify-content-center">Action</th>
        </tr>
      </thead>
      <tbody>
          <cfoutput>
            <cfloop index="i" from="1" to="#attributes.userAll.userResult.recordCount#">
              <tr>
                  <td>#attributes.userAll.user.username[i]#</td>
                  <td>#attributes.userAll.user.firstName[i]# #attributes.userAll.user.lastName[i]#</td>
                  <td class="d-flex justify-content-center">
                      <a class="me-2" href="/user.cfm?id=#attributes.userAll.user.id[i]#">
                          <i class="bi bi-pencil-square"></i>
                      </a>
                      <a href="/users.cfm?method=deleteUser&id=#attributes.userAll.user.id[i]#">
                          <i class="bi bi-trash"></i>
                      </a>
                  </td>
              </tr>
            </cfloop>
          </cfoutput>              
      </tbody>
   </table>
</section >


    