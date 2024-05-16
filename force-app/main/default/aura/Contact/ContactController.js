({
	handleClick : function(component, event, helper) {
        
        let myCont = component.get("c.getName");
        myCont.setParams({email:component.get("v.email")});
        myCont.setCallback(this,(ac)=>{
            
            let ar = ac.getReturnValue();
            
            component.set("v.lastname",ar[0]);
             component.set("v.myname",ar[1]);
        });
            
        $A.enqueueAction(myCont);
		
	}
})