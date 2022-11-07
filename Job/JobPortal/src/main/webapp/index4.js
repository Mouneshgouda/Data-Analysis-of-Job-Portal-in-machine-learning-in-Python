var counterContainer = document.querySelector(".website-counter4");
var resetButton = document.querySelector("#reset");
var visitCount = localStorage.getItem("page_view4");

// Check if page_view entry is present
if (visitCount) {
  visitCount = Number(visitCount) + 1;
  localStorage.setItem("page_view4", visitCount);
} else {
  visitCount = 1;
  localStorage.setItem("page_view4", 1);
}
counterContainer.innerHTML = visitCount;

// Adding onClick event listener
resetButton.addEventListener("click", () => {
  visitCount = 1;
  localStorage.setItem("page_view4", 1);
  counterContainer.innerHTML = visitCount;
});