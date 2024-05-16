({
	calculate : function(component, event, helper) {
        
        let amount = Number(component.get('v.amount'));
        let tenure = Number(component.get('v.tenure'));
        let duration = Number(component.get('v.duration'));
        
        component.set("v.return",amount*tenure*duration);
		
	}
})