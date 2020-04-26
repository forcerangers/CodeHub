({
    helperMethod : function(component, event, helper) {
        var action = component.get('c.getcalloutResponse');
        action.setParams({"country": component.get("v.SelectedCountry")});
        action.setCallback(this, function(a){
            var state = a.getState();
            if(state == 'SUCCESS') {
                var getdata=JSON.parse(a.getReturnValue());
                if(getdata.message != "Country not found or doesn't have any cases"){
                    component.set("v.cases",getdata.cases);
                    component.set("v.todayCases",getdata.todayCases);
                    component.set("v.todayDeaths",getdata.todayDeaths);
                    component.set("v.active",getdata.active);
                    component.set("v.critical",getdata.critical);
                    component.set("v.casesPerOneMillion",getdata.casesPerOneMillion);
                    component.set("v.deathsPerOneMillion",getdata.deathsPerOneMillion);
                    component.set("v.testsPerOneMillion",getdata.testsPerOneMillion);
                    component.set("v.countryInfo",getdata.countryInfo);
                }
                else{
                    var toastEvent = $A.get("e.force:showToast");
                    if (state === 'SUCCESS'){
                        toastEvent.setParams({
                            "title": "Info!",
                            "message": "Country not found or doesn't have any cases.",
                            type: 'info'
                        });
                    }
                }
            }
        });
        $A.enqueueAction(action);
    }
})
