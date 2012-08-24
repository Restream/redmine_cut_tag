document.observe('click', function(event) {

  var switchesSelector = '.cut_tag_show,.cut_tag_hide';
  var contentSelector = '.cut_tag_content';

  var switcher = event.findElement(switchesSelector);
  if (switcher) {
    var cutTagEl = switcher.parentNode;
    var selector = switchesSelector + ',' + contentSelector;
    Selector.matchElements(cutTagEl.childElements(), selector).map(Element.toggle);
    Event.stop(event);
  }
});


