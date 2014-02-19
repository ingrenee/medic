// JavaScript Document
$(document).ready(function() 
{
	$("#results_form").validate({
		rules: {
			users: {
				required: true
			},
			password: {
				required: true
			},
		},
		messages: {
			users: "*",
			password: "*",
		},
	});
	
	$("#contact_footer").validate({
		rules: {			
			correo: {
				required: true,
				email: true
			}
		},
		messages: {
			correo: "*",
		},
	});
		
});
