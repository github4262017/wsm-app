/**
 * 
 */

//global variable

//var projectname = 'wms-workspace'; // tomcat
var projectname = '';  // localhost

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

//Change password
$('.updatepassword').on('click',function(e){
	e.preventDefault();
	var userID = $(this).attr('id');
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