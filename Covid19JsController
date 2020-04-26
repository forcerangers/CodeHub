({
    handleClick : function(component, event, helper) {
        console.log(component.get('v.SelectedCountry'));
        helper.helperMethod(component, event, helper);  
        
    },
    doInit : function(component, event, helper) {
        var Contries=[];
        var action = component.get('c.getCountryName'); 
        action.setCallback(this, function(res){
            var state = res.getState();
            if(state == 'SUCCESS') {
                var getdata=JSON.parse(res.getReturnValue()); 
                for(var j=0;j<getdata.length;j++){
                    Contries.push({
                        country: getdata[j].country,
                    });
                }
                component.set("v.jsonArray",Contries);
                {
                    var toastEvent = $A.get("e.force:showToast");
                    if (state === 'SUCCESS'){
                        toastEvent.setParams({
                            "title": "Info!",
                            "message": "Please Select any Country.",
                            type: 'info'
                        });
                    }
                    
                    setInterval ((toastEvent.fire), 100);
                }
            }		
        });
        $A.enqueueAction(action);
    }
})
