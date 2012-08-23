require 'redmine'

require_dependency 'redmine_cut_tag/hooks'
require_dependency 'redmine_cut_tag/macros'

Redmine::Plugin.register :redmine_cut_tag do
  name 'Redmine Cut Tag plugin'
  author 'danil.tashkinov@gmail.com'
  description 'This plugin adds the ability to use a tag CUT in the issue description'
  version '0.0.1'
  url 'https://github.com/Undev/redmine_cut_tag'
  author_url 'http://github.com/Undev'
end
