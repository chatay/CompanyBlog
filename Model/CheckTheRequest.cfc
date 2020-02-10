<cfcomponent 
	
	output="true">

	<cffunction 

		name="_req"
		
		access="remote"
		 
		returnFormat="json"
		
		output="true" >
		
	   <cfset returnStruct = {var1='I from chectheRequest From',var2='no'}>

       <cfoutput>#serializeJSON(returnStruct)#</cfoutput>
       
   </cffunction>
</cfcomponent>