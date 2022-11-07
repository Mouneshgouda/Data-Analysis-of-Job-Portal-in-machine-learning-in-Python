$(document).ready(function() {
$("#search").click(function() {
              /*  var Agriculture= $("#Agriculture").val();
				var Animal_Science = $("#Animal_Science").val();
				var Business = $("#Business").val();
				var Engineering = $("#Engineering").val();
				var Marketing = $("#Marketing").val();*/
				var select=$("#select").val();
				alert("aaa"+select);

			$.ajax({
				
				url : './SearchController',
				method : 'POST',
				data : {
				select : select				

				},

				success : function(response) {
					var message = response;
				

					if (message == "store") {
						window.location.href = "jobseekerhome.jsp";
					} else {

						window.location.href = "index.jsp";
					}
				}

			})
		
				});
	
});