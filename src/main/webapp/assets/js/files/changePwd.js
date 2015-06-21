//////////////////
// Pages Signup //
//////////////////

"use strict";

$(document).ready(function(){

	/* Form Validation */
	/**
	 * DEMO CODE
	 * These lines of code below are merely demo purposes. Build upon them and create your own
	 * Check documentation for usage
	 */
	$('.registration-form')
	.bootstrapValidator({
		feedbackIcons: {
			valid: 'icon icon-check',
			invalid: 'icon icon-cross',
			validating: 'icon icon-refresh'
		},
		fields: {
			oldPassword: {
				validators: {
					notEmpty: {
						message: '密码不能为空'
					}
				}
			},
			password: {
				validators: {
					notEmpty: {
						message: '密码不能为空'
					},
					stringLength: {
						min: 6,
						max: 30,
						message: '密码为8-30个数字或字符'
					}
				}
			},
			passwordConfirm: {
				validators: {
					identical: {
						field: 'password',
						message: '两次密码不同'
					}
				}
			}
		}
	})
	.on('success.field.bv', function(e, data) {
		// // $(e.target)  --> The field element
		// // data.bv      --> The BootstrapValidator instance
		// // data.field   --> The field name
		// // data.element --> The field element

		var $parent = data.element.parents('.form-group');

		// Remove the has-success class
		$parent.removeClass('has-success');

		// Hide the success icon
		$parent.find('.form-control-feedback[data-bv-icon-for="' + data.field + '"]').hide();
	});
});