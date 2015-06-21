///////////////////////////
// Form Wizard Functions //
///////////////////////////

"use strict";

var step1ValidateSucc = false;
var step2ValidateSucc = false;

$(document).ready(function() {
	/**
	 * DEMO CODE
	 * These lines of code below are merely demo purposes. Build upon them and create your own
	 * Check documentation for usage
	 */
	registor();
	/* Form Wizard */
	$('#rootwizard-1').bootstrapWizard({onNext: function(tab, navigation, index) {
		if(index == 1) {
//			var a = $('.registration-form').validate();
			var d = {};
			var username = $("#username").val();
			d["loginName"] = username;
			d["email"] = $("#email").val();
			d["password"] = $("#password").val();
			d["passwordConfirm"] = $("#passwordConfirm").val();
			d["qq"] = $("#qq").val();
			d["phone"] = $("#phone").val();
			d["contact"] = $("#contact").val();
			if(username != ""){
				$.post("saveBaseInfo", d, function(data){
					$("#loginName").val(username);
					$("#accountId").val(data.item.id);
					alert(JSON.stringify(data));
				});
			}
		}
		
		if(index == 2){
			var blEnd = $("#blEnd").val();
			var trcEnd = $("#trcEnd").val();
			var ocEnd = $("#ocEnd").val();
			if($("#bl").children().length == 1){
				return false;
			}
			if($("#trc").children().length == 1){
				return false;
			}
			if($("#oc").children().length == 1){
				return false;
			}
			var d = {};
			d["blValidPeriodEnd"] = blEnd;
			d["trcValidPeriodEnd"] = trcEnd;
			d["ocValidPeriodEnd"] = ocEnd;
//			d["userName"] = $("#loginName").val();
//			d["accountId"] = $("#accountId").val();
			if(blEnd != "" && trcEnd != "" && ocEnd != ""){
				$.post("saveCompanyInfo", d, function(data){
					alert(JSON.stringify(data));
				});
			} 
		}
		if(index == 3){
			var rawMaterialsTypes = $("#rawMaterialsTypes").val();
			alert(rawMaterialsTypes);
			var d = {};
			d["rawMaterialsTypes"] = rawMaterialsTypes;
			$.post("saveProduct", d, function(data){
				alert(JSON.stringify(data));
			});
		}
	}, onTabShow: function(tab, navigation, index) {
		var $total = navigation.find('li').length;
		var $current = index+1;
		var $percent = ($current/$total) * 100;
		var progressBar = $('#rootwizard-1').find('.progress-bar');

		progressBar.css({width:$percent+'%'});

		// Progress Bar Color Change - Optional
		// First, remove the previous highilight-color-*
		var regex = new RegExp('\\b' + 'progress-bar-' + '.+?\\b', 'g');
		$('#rootwizard-1').find('.progress-bar')[0].className = progressBar[0].className.replace(regex, '');

		// Progress Bar Color Change - Optional
		if($percent < 20){
			progressBar.addClass("progress-bar-danger");
		}else if(($percent >= 20) && ($percent < 50)){
			progressBar.addClass("progress-bar-warning");
		}else if(($percent >= 50) && ($percent < 75)){
			progressBar.addClass("progress-bar-info");
		}else if(($percent >= 75) && ($percent < 100)){
			// Keep default progress bar color
		}else{
			progressBar.addClass("progress-bar-success");
		}
	}, onTabClick: function(tab, navigation, index){
		return false;
	}});
});

function registor(){
	$('#step1')
	.bootstrapValidator({
		feedbackIcons: {
			valid: 'icon icon-check',
			invalid: 'icon icon-cross',
			validating: 'icon icon-refresh'
		},
		fields: {
			username: {
				validators: {
					notEmpty: {
						message: '用户名为必填项，不能为空'
					},
//					stringLength: {
//						min: 3,
//						max: 16,
//						message: 'The Username must be between 3 and 16 characters long'
//					},
					regexp: {
						regexp: /^[a-z\d\_\s]+$/i,
						message: 'The full name can consist of alphanumeric characters and spaces only'
					}
//					,
//				    remote: {
//                        type: 'POST',
//                        url: '/path/to/your/api/',
//                        message: 'The username is not available'
//                    }
				}
			},
			email: {
				validators: {
					notEmpty: {
						message: '邮箱为必填项，不能为空'
					},
					emailAddress: {
						message: '邮箱地址无效'
					}
				}
			},
			password: {
				validators: {
					notEmpty: {
						message: '密码为必填项，不能为空'
					},
					stringLength: {
						min: 6,
						max: 16,
						message: '密码为6-16个字符'
					}
				}
			},
			passwordConfirm: {
				validators: {
					identical: {
						field: 'password',
						message: '确认密码和密码不同'
					}
				}
			}
		}
	}).on('success.field.bv', function(e, data) {
		// // $(e.target)  --> The field element
		// // data.bv      --> The BootstrapValidator instance
		// // data.field   --> The field name
		// // data.element --> The field element

		// var $parent = data.element.parents('.form-group');

		// // Hide the success icon
		// $parent.find('.form-control-feedback[data-bv-icon-for="' + data.field + '"]').hide();
		var $parent = data.element.parents('.form-group');
		// Remove the has-success class
		$parent.removeClass('has-success');

		// Hide the success icon
		$parent.find('.form-control-feedback[data-bv-icon-for="' + data.field + '"]').hide();
		step1ValidateSucc = true;
	}).on('err.field.bv', function(e, data) {
		// // $(e.target)  --> The field element
		// // data.bv      --> The BootstrapValidator instance
		// // data.field   --> The field name
		// // data.element --> The field element

		// var $parent = data.element.parents('.form-group');

		// // Hide the success icon
	}).on('form.success.bv', function(e) {
		alert(1);
	});
}