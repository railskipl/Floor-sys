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


$(document).ready(function() {
  $("#new_contact").validate({
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

$(document).ready(function() {
  $("#new_customer").validate({
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
																				"customer[added_by]":{
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
																				"customer[added_by]":{
 required: "This field is required."
																				}
		}
	});
});


$(document).ready(function() {
  $("#new_prospect").validate({
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
