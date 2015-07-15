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
	
	// Multi-Select Group
	$('#companys').multiselect({
		enableClickableOptGroups : false,
		buttonWidth : '100%',
		nonSelectedText : '请选择',
		maxHeight : '200'
	});
});

function changeProduct(pid) {
	$("#companys").empty();
	var d = {
		id : pid
	};
	$.post("../common/findCompany", d, function(data) {
		data.records.forEach(function(e) {
			var op = $('<option>').attr("value", e.id).attr("label", e.name);
			$("#companys").append(op);
			$('#example33').multiselect('setOptions', configurationSet);
			$("#companys").multiselect('rebuild');
		});
	});
}