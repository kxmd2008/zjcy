///////////////////////////
// Form Extras Functions //
///////////////////////////

"use strict";

$(document).ready(function(){
	/* Field Masks */
//	$('.date').mask('00/00/0000');

	/* Date/Time Picker */
	// 营业执照
	$('#blEnd').datetimepicker({
		pickTime: false,
//		format : 'yyyy/mm/dd'
	});
	//税务登记证
	$('#trcEnd').datetimepicker({
		pickTime: false
	});
	//组织机构代码证
	$('#ocEnd').datetimepicker({
		pickTime: false
	});
	
	// Multi-Select Group
	$('#rawMaterialsTypes').multiselect({
		enableClickableOptGroups: true,
		buttonWidth: '100%',
		nonSelectedText : '请选择',
		maxHeight : '200'
	});
});

function supplierTypeChange(v){
	if(v == 1){//贸易商
		
	} else if(v == 2){//生产企业
		
	} else {//
		
	}
}