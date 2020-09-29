// JavaScript Document
function number(e)
	
	{
		if(e.keyCode>=48 && e.keyCode<=57)
		{
			return true;
		}
		else
		{
		alert("Enter Numbers Only")
			return false;
		}
	}

	function character(e)
	{
		if((e.keyCode>=65 && e.keyCode<=91)||(e.keyCode>=97 && e.keyCode<=121))
		{
			return true;
		}
		else
		{alert("Enter Character Only")
			return false;
		}
	}
	function isCharacter(evt)
{
         var charCode = (evt.which) ? evt.which : event.keyCode

		if(( charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode ==  95) || (charCode ==  32) )
         return true;

		 return false;
}      
function isNumber(evt)
{

         var charCode = (evt.which) ? evt.which : event.keyCode
 
         if (charCode >= 48 && charCode <= 57)
            return true;
		else
         return false;
} 

function validateEmail(emailField)
		{
        	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

        	if (reg.test(emailField.value) == false) 
        	{
        	    alert('Invalid Email Address');
			emailField.focus();
        	    return false;
        	}
			return true;
		}
