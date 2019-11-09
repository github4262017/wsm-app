/**
 * 
 */

//global variable

//var projectnamewms = 'wms-workspace'; // tomcat
var projectnamewms = '';  // localhost

// on loading display loader
$(window).load(function() {
	$(".se-pre-con").fadeOut("slow");;
});

//   reset button of PM Request form  
$('.pmrequest-cancel').on('click',function(e){
	e.preventDefault();
	location.reload();
});


//reset button of Approval form  
$('.requestapproval-cancel').on('click',function(e){
	e.preventDefault();
	location.reload();
});


//cancel button of Reject Request form  
$('.cancelrequestid').on('click',function(e){
	e.preventDefault();
	location.reload();
});


//close button of Rejected Request  
$('.rejclose').on('click',function(e){
	e.preventDefault();
	location.reload();
});


//super admin dashboard on clicking total user, corresponding table should appear
$('#totalusersID').on('click',function(e){
	e.preventDefault();
	$('.allusertable').css('display','block');
	$('.allfatable').css('display','none');
	$('.allpmtable').css('display','none');
	$('.alldmtable').css('display','none');
});

//super admin dashboard on clicking total user, corresponding table should appear
$('#faID').on('click',function(e){
	e.preventDefault();
	$('.allusertable').css('display','none');
	$('.allfatable').css('display','block');
	$('.alldmtable').css('display','none');
	$('.allpmtable').css('display','none');
});

//super admin dashboard on clicking total user, corresponding table should appear
$('#dmID').on('click',function(e){
	e.preventDefault();
	$('.allusertable').css('display','none');
	$('.allfatable').css('display','none');
	$('.allpmtable').css('display','none');
	$('.alldmtable').css('display','block');
});

//super admin dashboard on clicking total user, corresponding table should appear
$('#pmID').on('click',function(e){
	e.preventDefault();
	$('.allusertable').css('display','none');
	$('.allfatable').css('display','none');
	$('.alldmtable').css('display','none');
	$('.allpmtable').css('display','block');
});

//cancel delete user
$('.canceluser').on('click',function(e){
	e.preventDefault();
	location.reload();
});

//on clicking delete user button
$('.deleteuser').on('click',function(e){
	e.preventDefault();
	var userId = $(this).attr('id');
	$('#del_user').attr('value',userId);
	//console.log(userId);
});


//on confirming delete user button
$('.delUser').on('click',function(e){
	e.preventDefault();
	var userId = $(this).val();
	//document.location.href = '/users/delete(id='+userId+')'
	//console.log('/users/delete(id='+userId+')');
	$.ajax({
		url : "/users/delete?id="+userId,
		crossDomain:true,
		   success: function (data) {
		        //myJsonData = data;
		       // console.log("Data: " + data);
		       // populateDataTable(myJsonData);
			   $('.DeleteUser').css('display','none');
			   $('.DeletedUser').css('display','block');
			   location.reload();
		        
		      },
		      error: function (e) {
		        console.log("There was an error with your request...");
		        console.log("error: " + e);
		      }
	});
});


$('.saveUser').on('click',function(e){
	e.preventDefault();
	 $('.adduser').css('display','none');
	   $('.AddedUser').css('display','block');
	   location.reload();
	/*var userID = $(this).attr('id');
	//console.log(userID);
	$.ajax({
		url : "/myprofile/change_password?id="+userID,
		crossDomain:true,
		   success: function (data) {
		        //myJsonData = data;
		       // console.log("Data: " + data);
		       // populateDataTable(myJsonData);
			   $('.changePassword').css('display','none');
			   $('.changedPassword').css('display','block');
			   location.reload();
		        
		      },
		      error: function (e) {
		        console.log("There was an error with your request...");
		        console.log("error: " + e);
		      }
	});*/
});


//on clicking delete group button
$('.deleterole').on('click',function(e){
	e.preventDefault();
	var userId = $(this).attr('id');
	$('#del_role').attr('value',userId);
	//console.log(userId);
});


//on confirming delete role button
$('.delRole').on('click',function(e){
	e.preventDefault();
	var userId = $(this).val();
	//document.location.href = '/users/delete(id='+userId+')'
	//console.log('/users/delete(id='+userId+')');
	$.ajax({
		url : "/admin/roles/delete?id="+userId,
		crossDomain:true,
		   success: function (data) {
		        //myJsonData = data;
		       // console.log("Data: " + data);
		       // populateDataTable(myJsonData);
			   $('.DeleteRole').css('display','none');
			   $('.DeletedRole').css('display','block');
			   location.reload();
		        
		      },
		      error: function (e) {
		        console.log("There was an error with your request...");
		        console.log("error: " + e);
		      }
	});
});

function showPasswordChange(){
	$('#changepasswordform')[0].reset();
	$("#changepasswordModal").modal('show');
}

$("#changepasswordform").submit(function(event) {
	event.preventDefault(); //prevent default action 
	$(".alert-success").hide();
	$(".alert-danger").hide();
	var post_url = $(this).attr("action"); //get form action url
	var request_method = $(this).attr("method"); //get form GET/POST method
	var form_data = $(this).serialize(); //Encode form elements for submission
	console.log(form_data);
	$.ajax({
		url : post_url ,
		type : request_method,
		data : form_data
	}).done(function(response) {
		if(response.successCode=='1'){
			$(".alert-success").html(response.successMsg);
			$(".alert-success").show();
		}else{
			$(".alert-danger").html(response.errorMsg);
			$(".alert-danger").show();
		}
	});
});


var myInput = document.getElementById("changeuserpassword");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");
var special = document.getElementById("special");

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("cpwdmessage").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("cpwdmessage").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) {  
    letter.classList.remove("cpwdinvalid");
    letter.classList.add("cpwdvalid");
  } else {
    letter.classList.remove("cpwdvalid");
    letter.classList.add("cpwdinvalid");
  }
  
  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) {  
    capital.classList.remove("cpwdinvalid");
    capital.classList.add("cpwdvalid");
  } else {
    capital.classList.remove("cpwdvalid");
    capital.classList.add("cpwdinvalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) {  
    number.classList.remove("cpwdinvalid");
    number.classList.add("cpwdvalid");
  } else {
    number.classList.remove("cpwdvalid");
    number.classList.add("cpwdinvalid");
  }
  
  // Validate special character
  var special_char = /[!@#$%&*_+-.]/g;
  if(myInput.value.match(special_char)) {  
    special.classList.remove("cpwdinvalid");
    special.classList.add("cpwdvalid");
  } else {
	  special.classList.remove("cpwdvalid");
	  special.classList.add("cpwdinvalid");
  }
  
  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("cpwdinvalid");
    length.classList.add("cpwdvalid");
  } else {
    length.classList.remove("cpwdvalid");
    length.classList.add("cpwdinvalid");
  }
}

//selecting floor from side menu
$('.sidemenufloor').on('click',function(e){
		e.preventDefault();
		var selectedfloor = $(this).attr('id');
		console.log(selectedfloor);
		document.location.href = projectnamewms+'/myprofile/utilizationStatus';
	});


