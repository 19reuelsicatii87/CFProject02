<section id="modal-notif">
   <div id="errorModal" class="modal" tabindex="-1" style="display: block">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title">
                  <cfoutput>#attributes.title#</cfoutput>
               </h5>
               <button type="button" class="btn-close" onclick="hideModal()" aria-label="Close">
               </button>
            </div>
            <div class="modal-body">
               <p>
                  <cfoutput>#attributes.message#</cfoutput>
               </p>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary" onclick="hideModal()">
               Close
               </button>
            </div>
         </div>
      </div>
   </div>
</section >

    
<script>

// Show Modal
// ===================
// function showModal() {
// document.getElementById("errorModal").style.display = "block";
// }

// Hide Modal
// ===================
function hideModal() {
document.getElementById("errorModal").style.display = "none";
}
</script>