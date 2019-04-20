$.validator.addMethod("regex",function(value,element,regexp){
	var re= new RegExp(regexp);
	return this.optional(element)||re.test(value);
}
		);
$("#sign-form").validate({
	rules : {
		name:{
			required:true,
			minlength:5,
			maxlength:20
			
		},
		
		email:{
			required:true,
			regex:/^\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b$/i 
			
		},
		password:{
			required:true,
			minlength:8,
			maxlength:16
		},
		confirmpassword:{
			required:true,
			minlength:8,
			maxlength:16
		},
		mobileno:{
		     required : true,
             maxlength:15,
             minlength: 10,
             number : true,
             customValidation: true
			
		}
	},
  messages:{
	  name:{
			required:"Please provide your  name",
			minlength:" name should be atleast 5 characters long",
			maxlength:" name should not be too long"
		},
		
	  
	  email:{
		  regex:"Enter correct email id",
	  },
		  
	  password:{
		  required:"Please provide a password",
		  minlength:"Your password must be atleast 8 characters long",
		  maxlength:"Your password is too long"
	  },
	  mobileno:{
		     required:"This field is required.",
             maxlength:"Maximum 15 characters allowed.",
            minlength: "Minimum 10 characters required.",
            number:"Please use numbers only.",
            customValidation:"Phone number should not prefix by space.",
		  
	  }
	
	  
  }
	
});


var select = document.getElementById('input-select');

//Append the option elements
for ( var i = 200; i <= 1000; i++ ){

	var option = document.createElement("option");
		option.text = i;
		option.value = i;

	select.appendChild(option);
}


var html5Slider = document.getElementById('html5');

noUiSlider.create(html5Slider, {
	start: [ 500, 800 ],
	connect: true,
	range: {
		'min': 200,
		'max': 1000
	}
});

var inputNumber = document.getElementById('input-number');

html5Slider.noUiSlider.on('update', function( values, handle ) {

	var value = values[handle];

	if ( handle ) {
		inputNumber.value = value;
	} else {
		select.value = Math.round(value);
	}
});

select.addEventListener('change', function(){
	html5Slider.noUiSlider.set([this.value, null]);
});

inputNumber.addEventListener('change', function(){
	html5Slider.noUiSlider.set([null, this.value]);
});



