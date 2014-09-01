	$('form.new_user').submit(function(event) {

		event.preventDefault();
		console.log("helloo????????? anybody????");

		var jqXHR = $.ajax({
			type: "POST",
			url: $(this).attr("action"),
			data: $(this).serialize(),
			dataType: "html",
		});

		console.log("this is after the post");
		
		jqXHR.done(function(form) {
			console.log("inside the done function");
			debugger;
			$("#signup_head").text("Add your instruments");
			$(this).remove();
			$(".signup_container").append(form);
		}.bind(this));

	})



