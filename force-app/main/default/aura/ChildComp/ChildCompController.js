({
	myEvent : function(component, event, helper) {
        
        var evt = component.getEvent("compevent");
        evt.setParams({"message":component.get("v.newestmsg")});
        evt.fire();
        console.log(component.get("v.newestmsg"))
		
	}
})