({
	handle : function(component, event, helper) {
        
        //get the comp from id
        let mynameinp = component.find("idname");
        if(String(mynameinp.get("v.value")) === "Abhisek"){
             mynameinp.set("v.errors",[{message:""}]);
        }else{
            
            mynameinp.set("v.errors",[{message:"Name mismatch !!"}]);
        }
        
        console.log('hello i am invoked');
		
	}
})