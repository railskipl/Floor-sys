// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  $("#new_company").validate({
	errorElement:'div',
	rules: {
		"company[company_name]":{
					                  required: true,
                        			character:true,
     					              maxlength:49
			},
		
		"company[email]":{
						required:true,
						email:true
		}
		},
	messages: {
		"company[company_name]":{
			required: "Please enter company name",
                        character: "Please enter only character",
			                  maxlength:jQuery.format("do not enter more than 50 charecter")
			},
		
		"company[email]":{
						            required: "Please enter email address",
						            email: "Please enter valid email id"
						
		}
		}
	});
});

