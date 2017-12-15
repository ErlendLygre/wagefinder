updatePagination(1)

function hideCompanies() {
  var companies = document.getElementsByClassName("company-wage-info")
  for (i = 0; i < companies.length; i ++) {
    companies[i].classList.add("pagination-hidden")
  }
}

function clickHandler(event) {
  updatePagination(event.target.textContent)
}

function updatePagination(bundleNumber) {
  hideCompanies()
  var bundle = document.getElementsByClassName(bundleNumber)
  for(i = 0; i < bundle.length; i ++) {
    bundle[i].classList.remove("pagination-hidden")
  }
}
