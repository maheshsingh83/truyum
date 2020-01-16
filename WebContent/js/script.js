function validationMenuItemForm(){

	var title= document.forms["menuItemForm"]["name"].value;
	var price= document.forms["menuItemForm"]["price"].value;
	var dateoflaunch= document.forms["menuItemForm"]["dateOfLaunch"].value;
	var category= document.forms["menuItemForm"]["category"].value;
	var regex =(/^.*[0-9].*$/);
	
	if(title ==""){
		alert("Title is required");
		return false;
	}
	if(title.length<2||title.length>65){
		alert("Title should have 2 to 65 characters ");
		return false;
	}
	if(price==""){
		alert("price is required");
		return false;
	}
	if(!price.match(regex)){
		alert("Price has to be a number.");
		return false ;
	}
	if(dateoflaunch==""){
		alert("Date of launch is required");
		return false;
	}
	if(category==""){
		alert("Select one category");
		return false;
	}
}	