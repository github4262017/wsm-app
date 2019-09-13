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


//cancel button of Reject Request form  
$('.cancelrequestid').on('click',function(e){
	e.preventDefault();
	location.reload();
});