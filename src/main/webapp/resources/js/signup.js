$.validator.addMethod("regex", function(value, element, regexp) {
	var re = new RegExp(regexp);
	return this.optional(element) || re.test(value);
	jQuery.validator.addMethod("noSpace", function(value, element) {
		return value.indexOf(" ") < 0 && value != "";
	}, "No space please and don't leave it empty");

});

$("#signup").validate({
	rules : {
		firstName : {
			required : true,
			regex : /^[a-zA-Z][a-zA-Z ]+[a-zA-Z]$/,
			minlength : 5,
			maxlength : 20

		},
		lastName : {
			required : true,
			regex : /^[a-zA-Z][a-zA-Z ]+[a-zA-Z]$/,
			minlength : 5,
			maxlength : 20

		},

		email : {
			required : true,
			regex : /^\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i

		},
		password : {
			required : true,
			minlength : 8,
			maxlength : 16,
			noSpace : true
		},
		confirmpassword : {
			required : true,
			minlength : 8,
			maxlength : 16

		},
		phoneNumber : {
			required : true,
			maxlength : 10,
			minlength : 10,
			number : true,
			customValidation : true

		}

	},
	messages : {
		firstName : {
			required : "Please provide your first name",
			regex : "Enter correct first name",
			minlength : "First name should be atleast 5 characters long",
			maxlength : "First name should not be too long"
		},
		lastName : {
			required : "Please provide your last name",
			regex : "Enter correct last name",
			minlength : "last name should be atleast 5 characters long",
			maxlength : "last name should not be too long"
		},

		email : {
			regex : "Enter correct email id"
		},

		password : {
			required : "Please provide a password",
			minlength : "Your password must be atleast 8 characters long",
			maxlength : "Your password is too long",
			noSpace :    "No space please and don't leave it empty"
		},
		PhoneNumber : {
			required : "This field is required.",
			maxlength : "Maximum 10 characters allowed.",
			minlength : "Minimum 10 characters required.",
			number : "Please use numbers only.",
			customValidation : "Phone number should not prefix by space.",

		}

	}
});