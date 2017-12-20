if (document.getElementById('browse')) {
  var browse = document.getElementById('browse');

  browse.addEventListener('click', function(event) {
    window.scroll({
      top: 660,
      left: 0,
      behavior: 'smooth'
    });
  });
}
