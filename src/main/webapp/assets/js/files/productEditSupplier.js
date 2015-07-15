"use strict";
var configurationSet = {
	enableClickableOptGroups : false,
	includeSelectAllOption : false,
	enableFiltering : false,
	buttonWidth : '100%',
	maxHeight : '200'
};
$(document).ready(function() {
	
	var arrivalDate = $('.form_date').datetimepicker({
		language:  'zh-CN',
		autoclose: 1,
		todayHighlight: 1,
		minView: 2,
		forceParse: 0,
		startDate: new Date()
	});
	
});
