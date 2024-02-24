<cfoutput>
    <cfif thisTag.executionMode EQ "start">

        <b>this is the #attributes.opening# tag</b>
        <li>use try-catch here in OPEN tag</li>

    <cfelse>

        <br>
        <br>
        <b>this is the #attributes.closing# tag</b>
        <li>use finally here in CLOSE tag</li>
        <br>
        <br>
        <p>this way you have an option to use only try-catch with OPENING or try-catch-finally with CLOSING</p>

    </cfif>
</cfoutput>