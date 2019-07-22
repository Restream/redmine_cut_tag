module Redmine
  module WikiFormatting
    module Textile
      module Helper

        alias_method :original_heads_for_wiki_formatter, :heads_for_wiki_formatter

        def heads_for_wiki_formatter
          original_heads_for_wiki_formatter
          unless @heads_for_wiki_formatter_with_cut_tag_included
            content_for :header_tags do
              javascript_include_tag('jstoolbar/cut_tag', plugin: 'redmine_cut_tag') +
                javascript_include_tag("jstoolbar/lang/cut_tag-#{current_language.to_s.downcase}", plugin: 'redmine_cut_tag') +
                stylesheet_link_tag('jstoolbar_cut_tag', plugin: 'redmine_cut_tag')
            end
            @heads_for_wiki_formatter_with_cut_tag_included = true
          end
        end

      end
    end
  end
end
