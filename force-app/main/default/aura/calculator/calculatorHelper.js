({
	plus : function(component, event, helper) {
        
        let inp1 = Number(component.get("v.inpone"));
        let inp2 = Number(component.get("v.inptwo"));
        
        component.set("v.plus",inp1+inp2);
         component.set("v.inpone","");
         component.set("v.inptwo","");
        console.log('hello',helper);
		
		
	},
	minus : function(component, event, helper) {
        
        let inp1 = Number(component.get("v.inpone"));
        let inp2 = Number(component.get("v.inptwo"));
        
        component.set("v.minus",inp1-inp2);
        component.set("v.inpone","");
        component.set("v.inptwo","");
		
	}
})