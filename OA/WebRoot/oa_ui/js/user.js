(function()
{
  var bgCounter = 0,
    backgrounds = [
      "oa_ui/img/1.jpg",
      "oa_ui/img/2.jpg",
      "oa_ui/img/3.jpg"
    ];
  function changeBackground()
  {
    bgCounter = (bgCounter+1) % backgrounds.length;
    $('body').css('background', '#000 url('+backgrounds[bgCounter]+') no-repeat');
    setTimeout(changeBackground, 4000);
  }
  changeBackground();
})();
