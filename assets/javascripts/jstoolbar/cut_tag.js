// cut_tag
jsToolBar.prototype.elements.cut_tag = {
  type: 'button',
  title: 'Cut tag',
  fn: {
    wiki: function() { this.encloseLineSelection('{{cut_start(untitled)}}\n', '\n{{cut_end}}') }
  }
}
