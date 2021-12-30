const labelBtn = document.querySelector(".nav-label");
const body = document.getElementsByTagName("body")[0];
const menuBtn = document.getElementById("menu");
const scrollBtn = document.querySelector(".scroll-btn");
let modal = false;

labelBtn.addEventListener("click", function () {
  if (modal == false) {
    body.style.overflowY = "hidden";
    modal = true;
  } else {
    body.style.overflowY = "visible";
    modal = false;
  }
});

scrollBtn.addEventListener("click", function () {
  window.scrollTo({ top: 0, behavior: "smooth" });
});
