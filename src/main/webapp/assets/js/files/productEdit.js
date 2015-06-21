
"use strict";

$(document).ready(function(){
	
	// Multi-Select Group
	$('#companys').multiselect({
		enableClickableOptGroups: false,
		buttonWidth: '100%',
		nonSelectedText : '请选择',
		maxHeight : '200'
	});
});