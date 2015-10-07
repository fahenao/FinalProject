	$(".day").on('click', function(event) {
		event.preventDefault()
		var date = $(this).find("#hidden_date").text()

		var request = $.get('api/appointments/' + date)

		request.fail(function () {
			alert ('fail')
		})
		request.done(function(appointments) {
			console.log(appointments)
		})
	});

