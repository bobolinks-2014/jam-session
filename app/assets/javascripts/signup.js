	$('form.new_user').submit(function(event) {

		event.preventDefault()

		var jqXHR = $.ajax({
			type: "POST",
			url: $(this).find("form").attr("action"),
			data: $(this).serialize(),
			dataType: "html"
		});
		
		jqXHR.done(function(form) {
			$("#signup_head").text("Add your instruments")
			$(this).remove()
		}.bind(this));

	})



