({
	changeit : function(component, event, helper) {
        
        let mycomp = component.find("myid");
        $A.util.addClass(mycomp,'mysize')
        console.log(mycomp);
		
	}
})