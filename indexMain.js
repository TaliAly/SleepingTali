const switchdark = document.getElementById('darkmode');

function turnon() {
  let body = document.body.classList;
  if (switchdark.classList[1] == "fa-moon") { // toggle light mode
    switchdark.classList.add("fa-sun");
    switchdark.classList.remove("fa-moon");
    body.remove("theme__dark");
    body.add("theme__light");
    switchdark.setAttribute("title", "toggle dark mode");
  } else if (darkmode.classList[1] == "fa-sun"){ // toggle dark mode
    switchdark.classList.add("fa-moon");
    switchdark.classList.remove("fa-sun");
    body.remove("theme__light");
    body.add("theme__dark");
    switchdark.setAttribute("title", "toggle light mode");
  }
}
