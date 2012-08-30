// due to this task http://www.redmine.org/issues/11445
// check which framework is installed

if (typeof(jQuery) == 'undefined') {
  // using prototype

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
} else {
  // using jquery

  $(document).ready(function() {

    var switchesSelector = '.cut_tag_show,.cut_tag_hide';
    var contentSelector = '.cut_tag_content';

    $(switchesSelector).live('click', function() {
      var selector = switchesSelector + ',' + contentSelector;
      $(this).parent().children(selector).toggle();
      return false;
    });
  });
}


