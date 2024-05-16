({
	handleFun : function(component, event, helper) {
        
        let handleData = component.get("c.getname");
        handleData.setParams({accnumber: component.get("v.accnumber")});
        handleData.setCallback(this,(hello)=>{
           component.set("v.accname",JSON.parse(JSON.stringify(hello.getReturnValue())).name);
            console.log( JSON.stringify(hello.getReturnValue()));
        })
		$A.enqueueAction(handleData);
	}
})