({
	doInit : function(component, event, helper) {
		var types = [
			{class: "optionClass", label: "5K", value : "5K"},
			{class: "optionClass", label: "10K", value : "10K"},
			{class: "optionClass", label: "Half-Marathon", value : "Half-Marathon"},
		];

		component.find("Type").set("v.options", types);
	}
})