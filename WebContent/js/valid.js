function myFunction(){ 
				if($('#check').is(':checked') ==true){
					document.getElementById("flight").style.visibility ="visible";
				}
				else if($('#check').is(':checked') ==false){
					document.getElementById("flight").style.visibility ="hidden";
				}
			} 
			
			function checkPassword() {
				var password1 = document.getElementById('pass1').value;
				var password2 = document.getElementById('pass2').value;
			
				if ((password1 == null && password2 == null) || (password1 == "" && password2 == "")){
					document.getElementById('passw').innerHTML = "Password cannot be empty!";
					return false;
				}
				else if (password1==password2) {
					document.getElementById('passw').innerHTML = "";
					return true;
				}
				else {
					document.getElementById('passw').innerHTML = "Passwords is not Match!";
					return false;
				}
			}

			function formValidation() {
				
				var ema = document.getElementById('email').value;
				var email = document.getElementById("email");
			    var em =  /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
			    
			    if(ema == "" || ema == null)
			    	document.getElementById('emai').innerHTML = "";
			    
			    else if (!email.value.match(em)) {
			    	document.getElementById('emai').innerHTML = "Email is not valid!";
			    	
			    }
			    else
			    	document.getElementById('emai').innerHTML = "";
			    

			    var faname = document.getElementById('firstname').value;
			    var firstname = document.getElementById("firstname");
			    var fname = /^[a-zA-Z]+$/;
			    
			    if(faname == "" || faname == null)
			    	document.getElementById('fname').innerHTML = "";
			    
			    else if (!firstname.value.match(fname)) {
			    	document.getElementById('fname').innerHTML = "First name is not valid!";
			    
			    }
			    else
			    	document.getElementById('fname').innerHTML = "";
			    	
			    	
			    var laname = document.getElementById('lastname').value;
			    var lastname = document.getElementById("lastname");
			    var lname = /^[a-zA-Z]+$/;
			    
			     if (laname == "" || laname == null){
			    	document.getElementById('lname').innerHTML = "";
			     }
			     else if (!lastname.value.match(lname)) {
			    	document.getElementById('lname').innerHTML = "Last name is not valid!";
			    
			    }
			    else{
			    	document.getElementById('lname').innerHTML = "";
			    }
			    
			     
			    var canum = document.getElementById('contact').value;
			    var contactnum = document.getElementById("contact");
			    var contact = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
			    
			    if (canum == "" || canum == null){
			    	document.getElementById('cont').innerHTML = "";
			     }
			    
			    else if (!contactnum.value.match(contact)) {
			    	document.getElementById('cont').innerHTML = "Contact is not valid!";
			    
			    }
			    else{
			    	document.getElementById('cont').innerHTML = "";
			    	
				}
			

			var nicc = document.getElementById('nicno').value;
		    var nic = document.getElementById("nicno");
		    var niccc = /^[0-9]{9}[vVxX]$/;
		    
		    if (nicc == "" || nicc == null){
		    	document.getElementById('ni').innerHTML = "";
		     }
		    
		    else if (!nic.value.match(niccc)) {
		    	document.getElementById('ni').innerHTML = "NIC is not valid!";
		    
		    }
		    else{
		    	document.getElementById('ni').innerHTML = "";
		    	
			}
		    
		    
			var dobb = document.getElementById('dob').value;
		    var dob = document.getElementById("dob");
		    var dobbb = /^(\d{4})(\/|-)(\d{1,2})(\/|-)(\d{1,2})$/;
		    
		    if (dobb == "" || dobb == null){
		    	document.getElementById('do').innerHTML = "";
		     }
		    
		    else if (!dob.value.match(dobbb)) {
		    	document.getElementById('do').innerHTML = "Date of Birth is not valid!";
		    
		    }
		    else{
		    	document.getElementById('do').innerHTML = "";
		    	
			}
		    
		    
		}

			function passwordValid() {
			    var password = document.getElementById("password").value;
			    var conpassword = document.getElementById("conpassword").value;
			    if (password != conpassword) {
			     //   alert("Passwords do not match.");
			    }
			}

			function MyValidation() {
			    formValidation();
			    passwordValid();
			}

			function MySubmit() {
				if(formValidation() == true){
					alert("hello");
				}
			}