// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui.js
//= require jquery.minical.js
//= require index.js
//= require_tree .

$(document).ready(function(){
	$('tr td:not(:last-child)').click(function(){
		row = $(this).parent();
		name = row.data('name');
		controller = $('[data-controller]').data('controller')
		if(row.children().eq(2).find("img:visible").length > 0){
			row.children().eq(2).find("img").hide('fast');
			row.find('input').val("");
		} else {
			if(row.children().eq(2).find("img").length > 0){
				row.children().eq(2).find("img").show('fast');
			} else {
				row.children().eq(2).replaceWith('<td><img alt=\"Checkmark\" src=\"/assets/checkmark.png\"></td>').hide().show('slow');
			}
			d = $.datepicker.formatDate('yy-M-dd', new Date());
			row.find('input').val(d);
		}
		$.ajax("advancements/" + advancementId, {
			type: 'GET',
			datatype: 'json',
			data: {
				req: name, con: controller
			},

			beforeSend: function(xhr) {
				xhr.setRequestHeader('Accept', 'application/json');
			},
			success: function(data){},
			error: function(jqXHR, textStatus, errorThrown) {}, 
			complete: function() {
				return $(this);
			}
		});
		console.log("It still works");
	});

	$('.datepicker').datepicker({
		showOn: "both",
		buttonImage: "images/calendar.gif",
		buttonImageOnly: true
	});
});
