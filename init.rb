require 'redmine'

require_dependency 'redmine_cut_tag/hooks'
require_dependency 'redmine_cut_tag/macros'
require_dependency 'redmine/wiki_formatting/textile/cut_tag_helper'

Redmine::Plugin.register :redmine_cut_tag do
  name 'Redmine Cut Tag plugin'
  author 'danil.tashkinov@gmail.com'
  description 'This plugin adds the ability to use a CUT tag'
  version '2.0.3'
  url 'https://github.com/Undev/redmine_cut_tag'
  author_url 'http://github.com/Undev'
  requires_redmine :version_or_higher => '2'
end
