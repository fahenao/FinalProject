	function formatDate(date) {
	 var hours = date.getHours();
	 var minutes = date.getMinutes();
	 var ampm = hours >= 12 ? 'pm' : 'am';
	 hours = hours % 12;
	 hours = hours ? hours : 12; // the hour '0' should be '12'
	 minutes = minutes < 10 ? '0'+minutes : minutes;
	 var strTime = hours + ':' + minutes + ' ' + ampm;
	 // return date.getMonth()+1 + "/" + date.getDate() + "/" + date.getFullYear() + "  " + strTime;
	 return strTime;

	};


	$(".day").on('click', function(event) {
		event.preventDefault()
		var date = $(this).find("#hidden_date").text()

		var request = $.get('api/appointments/' + date)

		request.fail(function () {
			alert ('fail')
		})
		request.done(function(appointments) {
			console.log(appointments)
			$('.day_appointments').empty();
			appointments.forEach(function(a) {
				var html_panel = ["<div class='panel panel-default'>",
				  "<div class='panel-heading'>",
				    "<h3 class='panel-title'>" +a.patient.fullname+" - "+a.services[0].name+"</h3>",
				  "</div>",
				  "<div class='panel-body'>",
				    a.comment +'<br>'+'<br>', 
				    "Start at: " +formatDate(new Date(a.start_time)) +'<br>',
				     "End at: " +formatDate(new Date(a.end_time)),
				  "</div>",
				"</div>"]
				$('.day_appointments').append(html_panel.join('\n'))

				// Patient fullname -	Service name
				// Appointment Comment
				// Appointmnet start_time, end_time

			})
		})
	});



