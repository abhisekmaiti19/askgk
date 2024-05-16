({
	cal : function(component, event, helper) {
        let num = Number(component.get("v.val"));
        sessionStorage.setItem('myval',num);
        component.set("v.val","");
        
		
	},
    res : function(component, event, helper) {
        
        let num = Number(component.get("v.val"));
        let res = num + Number(sessionStorage.getItem("myval"));
        component.set("v.ret",res);
        component.set("v.val","");
        
        component.find('testStatic').myfun();
        
		
	},
    
    

})