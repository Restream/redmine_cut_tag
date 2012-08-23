document.observe('click', function(event) {

  var switchesSelector = '.cut_tag_show,.cut_tag_hide';
  var contentSelector = '.cut_tag_content';

  var switcher = event.findElement(switchesSelector);
  if (switcher) {
    var cutTagEl = switcher.parentNode;
    cutTagEl.select(contentSelector).map(Element.toggle);
    cutTagEl.select(switchesSelector).map(Element.toggle);
    Event.stop(event);
  }
});


