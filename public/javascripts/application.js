// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(document).ready(function() {
  $("#new_company").validate({
	errorElement:'div',
	rules: {
		"company[user_id]":{
						required:true
				
		},
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
		"company[user_id]":{
						            required: "Please select the user"							         
		},
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

$(document).ready(function() {
  $("#new_vat").validate({
	errorElement:'div',
	rules: {
		"vat[tax_rate]":{
					              required: true					
			              }
		},
	messages: {
		"vat[tax_rate]":{
		                   	required:  "Please enter tax rate",
                    		}		
		}
	});
});

$(document).ready(function() {
  $("#new_category").validate({
	errorElement:'div',
	rules: {
		"category[category_name]":{
					                  required: true                       					
			},
		"category[category_type]":{
					                  required: true
					}
   		},
	messages: {
		"category[category_name]":{
		                   	required:  "Please enter category name",
                    	     	},
	  "category[category_type]":{
											  required:  "Please enter category type",
														}		
		}
	});
});

$(document).ready(function() {
  $("#new_sales_type").validate({
	errorElement:'div',
	rules: {
		"sales_type[code]":{
					                  required: true
											 },
	  "sales_type[name]":{
					                  required: true
					              },
		"sales_type[company_id]":{
					                  required: true
        								}
		},
	messages: {
		"sales_type[code]":{
		                   	required:  "Please enter the code",
                    		},
  	"sales_type[name]":{
		                	required:  "Please enter the name",
											},
	  "sales_type[company_id]":{
					              required:  "Please enter the company",
											}
		}
	});
});

$(document).ready(function() {
  $("#new_outgoing_type").validate({
	errorElement:'div',
	rules: {
		"outgoing_type[code]":{
					                  required: true                     					
			},
		"outgoing_type[name]":{
							              required: true
			},
		"outgoing_type[company_id]":{
									          required: true
			}
		},
	messages: {
		"outgoing_type[code]":{
		                   	required:  "Please enter the code",
                    		},
 	 "outgoing_type[name]":{
											  required:  "Please enter the name",
											 	},
  	"outgoing_type[company_id]":{
										  	required:  "Please enter the company",
														}		
		}
	});
});