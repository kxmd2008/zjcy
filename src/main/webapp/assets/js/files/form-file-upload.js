////////////////////////////////
// Form File Upload Functions //
////////////////////////////////

"use strict";

$(document).ready(function(){

	/**
	 * circloidBasicDropzone creates the basic dropzone feature
	 */
	function circloidBasicDropzone(){
		// "basicDropzone" is the camelized version of the HTML element's ID
		Dropzone.options.basicDropzone = {
			paramName: "file", // The name that will be used to transfer the file
			maxFilesize: 4, // MB
			acceptedFiles: "image/*",
			uploadMultiple: false,
			dictDefaultMessage : '拖动文件到此或点击此处',
			addRemoveLinks : true,
			dictRemoveFile : '删除',
			maxFiles : 1,
			accept: function(file, done) {
				done();
			}
		};
	}

	
	/**
	 * bytesToSize
	 * @param  {integer} bytes		the initial size in bytes
	 * @return {integer}			the size in Bytes, KB, MB, GB, TB
	 */
	function bytesToSize(bytes){
		var sizes = ['Bytes', 'KB', 'MB', 'GB', 'TB'];
		if (bytes == 0) return 'n/a';
		var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
		return Math.round(bytes / Math.pow(1024, i), 2) + ' ' + sizes[i];
	}

	/* Call Functions: circloidBasicDropzone(), circloidCustomizedDropzone(), circloidCustomizedDropzoneAlt() */
	circloidBasicDropzone();
});