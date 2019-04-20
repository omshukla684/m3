
$.validator.addMethod("regex", function(value, element, regexp) {
	var re = new RegExp(regexp);
	return this.optional(element) || re.test(value);
}, "Please check your input.");

$("#form").validate({

	rules : {

		email : {
			required : true,
			//email : true,
			regex : /^\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i
		},
		password : {
			required : true,
			minlength : 5
		}

	},

	messages : {

		password : {
			required : "Please provide a password",
			minlength : "Your password must be at least 5 characters long"
		},

		email : "Please enter a valid email address"
	}	

});
