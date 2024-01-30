<cfoutput>
   <cfloop index="i" from="1" to="#arrayLen(attributes.button)#">
      <button type="button" class="btn btn-#attributes.button[i]#">#attributes.button[i]#</button>
   </cfloop>
</cfoutput>