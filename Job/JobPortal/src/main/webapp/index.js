var counterContainer = document.querySelector(".website-counter");
var resetButton = document.querySelector("#reset");
var visitCount = localStorage.getItem("page_view1");

// Check if page_view entry is present
if (visitCount) {
  visitCount = Number(visitCount) + 1;
  localStorage.setItem("page_view1", visitCount);
} else {
  visitCount = 1;
  localStorage.setItem("page_view1", 1);
}
/*var a=localStorage;*/
counterContainer.innerHTML = visitCount;
var visitCount = document.getElementById("visitCount").innerHTML;

/*$(document).ready(function() {
$("#login").click(function() {

  var visitCount = $("#visitCount").val();
  alert("Enter"+a);
  $.ajax({
			
				url : './VisitController',
				method : 'POST',
				data : {
					a : a					

				},

				success : function(response) {
					var message = response;
				

					if (message == "visit") {
						window.location.href = "jobseekersearch.jsp";
					} else {

						window.location.href = "index.jsp";
					}
				}

			})
		
				
  });	
  	  });*/

