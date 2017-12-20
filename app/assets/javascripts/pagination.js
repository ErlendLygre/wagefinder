updatePagination(1)

updateButtonActive(document.getElementsByClassName("btn-pagination")[0])

function hideCompanies() {
  var companies = document.getElementsByClassName("company-wage-info")
  for (i = 0; i < companies.length; i ++) {
    companies[i].classList.add("pagination-hidden")
  }
}

function clickHandler(event) {
  updatePagination(event.target.textContent)
  updateButtonActive(event.target)
}

function updatePagination(bundleNumber) {
  hideCompanies()
  var bundle = document.getElementsByClassName(bundleNumber)
  for(i = 0; i < bundle.length; i ++) {
    bundle[i].classList.remove("pagination-hidden")
  }
}

function updateButtonActive(button) {
  var buttons = document.getElementsByClassName("btn-pagination")
  for (i = 0; i < buttons.length; i ++) {
    buttons[i].classList.remove("btn-pagination-active")
  }
  button.classList.add("btn-pagination-active")
}
