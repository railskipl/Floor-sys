// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function remove_fields(link) {
  $(link).previous("input[type=hidden]").value = "1";
  $(link).up(".fields").hide();
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).up().insert({
    before: content.replace(regexp, new_id)
  });
}

jQuery(document).ready(function() {
  jQuery("#new_company").validate({
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
		},
			"company[user_id]":{
							required:true
					
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
		},
			"company[user_id]":{
							            required: "Please select the user"							         
			}
		
		}
	});
});

jQuery(document).ready(function() {
  jQuery("#new_vat").validate({
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

jQuery(document).ready(function() {
  jQuery("#new_category").validate({
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

jQuery(document).ready(function() {
  jQuery("#new_sales_type").validate({
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

jQuery(document).ready(function() {
  jQuery("#new_outgoing_type").validate({
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


jQuery(document).ready(function() {
  jQuery("#new_contact").validate({
	errorElement:'div',
	rules: {
		"contact[contact_name]":{
					                   required: true,
                        			character:true,
     					                maxlength:49
			},
				"contact[contact_address1]":{
								required:true

				},
					"contact[contact_position]":{
									required:true

					},
					"contact[contact_town]":{
									required:true

					},
						"contact[contact_country]":{
										required:true

						},
							"contact[contact_postcode]":{
											required:true

							},
								"contact[contact_vat_number]":{
												required:true

								},
										"contact[contact_telephone]":{
														required:true

										},
												"contact[contact_fax]":{
																required:true

												},
														
		"contact[contact_email]":{
						required:true,
						email:true
		},
			"contact[nominal_code]":{
							required:true

			},
				"contact[vat_rate_sales]":{
								required:true

				},
					"contact[vat_rate_purchases]":{
									required:true

					},
			"contact[skype]":{
							required:true
					
			},
				"contact[msn]":{
								required:true

				}
		},
	messages: {
		"contact[company_name]":{
			required: "Please enter company name",
                        character: "Please enter only character",
			                  maxlength:jQuery.format("do not enter more than 50 charecter")
			},
		
		"contact[email]":{
						            required: "Please enter email address",
						            email: "Please enter valid email id"						
		},
			"contact[contact_address1]":{
							            required: "Please enter the address"							         
			},
				"contact[contact_position]":{
								            required: "Please enter the contact position"							         
				},
				"contact[contact_town]":{
								            required: "Please enter the contact town"							         
				},
					"contact[contact_country]":{
									            required: "Please select the country"							         
					},
						"contact[contact_postcode]":{
										            required: "Please enter the contact postcode"							         
						},
							"contact[contact_vat_number]":{
											            required: "Please enter the vat number"							         
							},
								"contact[contact_telephone]":{
												            required: "Please enter the telephone number"							         
								},
									"contact[contact_fax]":{
													            required: "Please enter the fax number"							         
									},
										"contact[nominal_code]":{
														            required: "Please enter the nominal code"							         
										},
											"contact[vat_rate_sales]":{
															            required: "Please enter the rate sales"							         
											},
												"contact[vat_rate_purchases]":{
																            required: "Please enter the rate purchase"							         
												},
													"contact[skype]":{
																	            required: "Please enter the skype"							         
													},											
													"contact[msn]":{
																												            required: "Please enter the msm"							         
																								}
		
		}
	});
});

jQuery(document).ready(function() {
  jQuery("#new_customer").validate({
	errorElement:'div',
	rules: {
		"customer[nominal_gl_code]":{
					                   required: true
                        		
			},
				"customer[contact_id]":{
								required:true

				},
					"customer[vat_rate_sales]":{
									required:true

					},
					"customer[vat_rate_purchases]":{
									required:true

					},
						"customer[contact_group]":{
										required:true

						},
							"customer[company_no]":{
											required:true

							},
								"customer[business_type]":{
												required:true

								},
										"customer[bank_name]":{
														required:true

										},
												"customer[account_name]":{
																required:true

												},
														
		"customer[sort_code]":{
						required:true,
					
		},
			"customer[account_number]":{
							required:true

			},
				"customer[credit_limit]":{
								required:true

				},
					"customer[terms]":{
									required:true

					},
			"customer[on_hold]":{
							required:true
					
			},
				"customer[account_balance]":{
								required:true

				},
					"customer[note_type]":{
									required:true

					},
						"customer[note_description]":{
										required:true

						},
							"customer[attachement_type]":{
											required:true

							},
								"customer[attachement_details]":{
												required:true

								},
									"customer[status]":{
													required:true

									},
										"customer[contact_type]":{
														required:true

										},
											"customer[contact]":{
															required:true

											},
														"customer[outcome]":{
																		required:true

														},
																	"customer[note]":{
																					required:true

																	},
																				"customer[added_by_customer]":{
																								required:true

																				}
								
		},
	messages: {
		"customer[nominal_gl_code]":{
					                   required: "This field is required."
                        		
			},
				"customer[contact_id]":{
 required: "This field is required."
				},
					"customer[vat_rate_sales]":{
 required: "This field is required."
					},
					"customer[vat_rate_purchases]":{
 required: "This field is required."
					},
						"customer[contact_group]":{
 required: "This field is required."
						},
							"customer[company_no]":{
 required: "This field is required."
							},
								"customer[business_type]":{
 required: "This field is required."
								},
										"customer[bank_name]":{
 required: "This field is required."
										},
												"customer[account_name]":{
 required: "This field is required."
												},
														
		"customer[sort_code]":{
 required: "This field is required."					
		},
			"customer[account_number]":{
 required: "This field is required."
			},
				"customer[credit_limit]":{
 required: "This field is required."
				},
					"customer[terms]":{
 required: "This field is required."
					},
			"customer[on_hold]":{
 required: "This field is required."					
			},
				"customer[account_balance]":{
 required: "This field is required."
				},
					"customer[note_type]":{
 required: "This field is required."
					},
						"customer[note_description]":{
 required: "This field is required."
						},
							"customer[attachement_type]":{
 required: "This field is required."
							},
								"customer[attachement_details]":{
 required: "This field is required."
								},
									"customer[status]":{
 required: "This field is required."
									},
										"customer[contact_type]":{
 required: "This field is required."
										},
											"customer[contact]":{
 required: "This field is required."
											},
														"customer[outcome]":{
 required: "This field is required."
														},
																	"customer[note]":{
 required: "This field is required."
																	},
																				"customer[added_by_customer]":{
 required: "This field is required."
																				}
		}
	});
});


jQuery(document).ready(function() {
  jQuery("#new_prospect").validate({
	errorElement:'div',
	rules: {
		"prospect[telephone]":{
					                  required: true
			},
		
		"prospect[online]":{
						required:true
		},
		"prospect[walk_in]":{
						required:true
		},
		"prospect[product_interest]":{
						required:true
		},
		"prospect[quotation_number_sent]":{
						required:true
		},
		"prospect[date_of_purchase_to_make]":{
						required:true
		},
			"prospect[notes]":{
							required:true
					
			},
				"prospect[sales_person]":{
								required:true

				}
		},
	messages: {
			"prospect[telephone]":{
						              required: "This field is required."
				},

			"prospect[online]":{
						required: "This field is required."
			},
			"prospect[walk_in]":{
						required: "This field is required."
			},
			"prospect[product_interest]":{
						required: "This field is required."
			},
			"prospect[quotation_number_sent]":{
							required: "This field is required."
			},
			"prospect[date_of_purchase_to_make]":{
						required: "This field is required."
			},
				"prospect[notes]":{
							required: "This field is required."

				},
					"prospect[sales_person]":{
								required: "This field is required."

					}
		
		}
	});
});

jQuery(document).ready(function() {
  jQuery("#new_subcontractor").validate({
	errorElement:'div',
	rules: {
		"subcontractor[rate]":{
					                  required: true
			},
		
		"subcontractor[type_id]":{
						required:true
		},
		"subcontractor[contact]":{
						required:true
		},
		"subcontractor[outcome]":{
						required:true
		},
		"subcontractor[note]":{
						required:true
		},
		"subcontractor[addded_by]":{
						required:true
		}
		},
	messages: {
			"subcontractor[rate]":{
						   	required: "This field is required."
				},

			"subcontractor[type_id]":{
	required: "This field is required."
			},
			"subcontractor[contact]":{
							required: "This field is required."
			},
			"subcontractor[outcome]":{
							required: "This field is required."
			},
			"subcontractor[note]":{
								required: "This field is required."
			},
			"subcontractor[addded_by]":{
							required: "This field is required."
			}
		
		}
	});
});


jQuery(document).ready(function() {
  jQuery("#new_sale_representative").validate({
	errorElement:'div',
	rules: {
	
		
		"sale_representative[type_id]":{
						required:true
		},
		"sale_representative[contact]":{
						required:true
		},
		"sale_representative[outcome]":{
						required:true
		},
		"sale_representative[note]":{
						required:true
		},
		"sale_representative[added_by]":{
						required:true
		}
		},
	messages: {
		
			"sale_representative[type_id]":{
	required: "This field is required."
			},
			"sale_representative[contact]":{
							required: "This field is required."
			},
			"sale_representative[outcome]":{
							required: "This field is required."
			},
			"sale_representative[note]":{
								required: "This field is required."
			},
			"sale_representative[added_by]":{
							required: "This field is required."
			}
		
		}
	});
});

jQuery(document).ready(function() {
  jQuery("#new_supplier").validate({
	errorElement:'div',
	rules: {
	
		
		"supplier[account_reference]":{
						required:true
		},
		"supplier[company_name]":{
						required:true
		},
		"supplier[account_number]":{
						required:true
		},
		"supplier[vat_number]":{
						required:true
		},
		"supplier[address_line1]":{
						required:true
		},
		"supplier[address_line2]":{
						required:true
		},
		"supplier[town]":{
						required:true
		},
		"supplier[postcode]":{
						required:true
		},
		"supplier[website]":{
						required:true
		},
		"supplier[glcode]":{
						required:true
		},
			"supplier[type_id]":{
							required:true
			},
				"supplier[contact]":{
								required:true
				},
					"supplier[outcome]":{
									required:true
					},
		"supplier[note]":{
						required:true
		},
		"supplier[added_by]":{
						required:true
		}
		},
	messages: {
			"supplier[account_reference]":{
							required: "This field is required."
			},
			"supplier[company_name]":{
							required: "This field is required."
			},
			"supplier[account_number]":{
							required: "This field is required."
			},
			"supplier[vat_number]":{
							required: "This field is required."
			},
			"supplier[address_line1]":{
							required: "This field is required."
			},
			"supplier[address_line2]":{
						required: "This field is required."
			},
			"supplier[town]":{
								required: "This field is required."
			},
			"supplier[postcode]":{
							required: "This field is required."
			},
			"supplier[website]":{
						required: "This field is required."
			},
			"supplier[glcode]":{
							required: "This field is required."
			},
				"supplier[type_id]":{
								required: "This field is required."
				},
					"supplier[contact]":{
								required: "This field is required."
					},
						"supplier[outcome]":{
										required: "This field is required."
						},
			"supplier[note]":{
	required: "This field is required."
				},
			"supplier[added_by]":{
							required: "This field is required."
			}
		
		}
	});
});


jQuery(document).ready(function() {
  jQuery("#new_product_type").validate({
	errorElement:'div',
	rules: {
	
		
		"product_type[name]":{
						required:true
		}

		},
	messages: {
	
			"product_type[name]":{
	required: "This field is required."
			}
		
		}
	});
});


jQuery(document).ready(function() {
  jQuery("#new_product_backing").validate({
	errorElement:'div',
	rules: {
	
		
		"product_backing[name_1]":{
						required:true
		},
			"product_backing[name_2]":{
							required:true
			}

		},
	messages: {
	
			"product_backing[name_1]":{
	required: "This field is required."
			},
					"product_backing[name_2]":{
			required: "This field is required."
					}
		
		}
	});
});

jQuery(document).ready(function() {
  jQuery("#new_product_fibre").validate({
	errorElement:'div',
	rules: {
	
		
		"product_fibre[name_1]":{
						required:true
		},
			"product_fibre[name_2]":{
							required:true
			}

		},
	messages: {
	
			"product_fibre[name_1]":{
	required: "This field is required."
			},
					"product_fibre[name_2]":{
			required: "This field is required."
					}
		
		}
	});
});


jQuery(document).ready(function() {
  jQuery("#new_product_fibre").validate({
	errorElement:'div',
	rules: {
	
		
		"product_fibre[name_1]":{
						required:true
		},
			"product_fibre[name_2]":{
							required:true
			}

		},
	messages: {
	
			"product_fibre[name_1]":{
	required: "This field is required."
			},
					"product_fibre[name_2]":{
			required: "This field is required."
					}
		
		}
	});
});

jQuery(document).ready(function() {
  jQuery("#new_product_style_type").validate({
	errorElement:'div',
	rules: {
	
		
			"product_style_type[name_1]":{
							required:true
			},
				"product_style_type[name_2]":{
								required:true
				}

			},
		messages: {

				"product_style_type[name_1]":{
		required: "This field is required."
				},
						"product_style_type[name_2]":{
				required: "This field is required."
						} 
		
		}
	});
});
jQuery(document).ready(function() {
  jQuery("#new_product_wear").validate({
	errorElement:'div',
	rules: {
	
		
			"product_wear[name_1]":{
							required:true
			},
				"product_wear[name_2]":{
								required:true
				}

			},
		messages: {

				"product_wear[name_1]":{
		required: "This field is required."
				},
						"product_wear[name_2]":{
				required: "This field is required."
						} 
		
		}
	});
});

jQuery(document).ready(function() {
  jQuery("#new_product").validate({
	errorElement:'div',
	rules: {
	
		
			"product[product_code]":{
							required:true
			},
			"product[product_type_id]":{
							required:true
			},
			"product[product_group_id]":{
							required:true
			},
			"product[supplier_id]":{
							required:true
			},
		
			"product[range_name]":{
								required:true
			},
			
			"product[product_fibre_id]":{
								required:true
			},
			"product[product_banking_id]":{
								required:true
			},
			"product[pile_height_gauge]":{
								required:true
			},
			"product[pile_weight]":{
								required:true
			},
			"product[unit_weight]":{
								required:true
			},
			"product[product_wear_id]":{
								required:true
			},
			"product[product_style_type_id]":{
								required:true
			},
			"product[is_published]":{
								required:true
			},
			"product[full_description]":{
								required:true
			},
			"product[notes]":{
								required:true
			},
			
			"product[colour_name]":{
								required:true
			}
			
			},
		messages: {

				"product[product_code]":{
							required: "This field is required."
				},
				"product[product_type_id]":{
							required: "This field is required."
				},
				"product[product_group_id]":{
							required: "This field is required."
				},
				"product[supplier_id]":{
							required: "This field is required."
				},
				"product[range_name]":{
							required: "This field is required."
				},
				"product[product_fibre_id]":{
							required: "This field is required."
				},
				"product[product_banking_id]":{
							required: "This field is required."
				},
				"product[pile_height_gauge]":{
							required: "This field is required."
				},
							
				"product[pile_weight]":{
							required: "This field is required."
				},
								
				"product[unit_weight]":{
							required: "This field is required."
				},
				"product[product_wear_id]":{
							
							required: "This field is required."
				},
				"product[product_style_type_id]":{
							
							required: "This field is required."
				},
				"product[is_published]":{
							
							required: "This field is required."
				},
				"product[full_description]":{
							
							required: "This field is required."
				},
				"product[notes]":{
							
							required: "This field is required."
				},
			
				"product[colour_name]":{
							
							required: "This field is required."
				}
		
		}
	});
});