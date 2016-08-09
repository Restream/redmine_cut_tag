module RedmineCutTag
  module Macros
    Redmine::WikiFormatting::Macros.register do
      desc 'Cut start tag'
      macro :cut_start do |obj, args|
        render partial: 'issues/redmine_cut_tag_start', layout: false, locals: { title: args.first }
      end

      desc 'Cut end tag'
      macro :cut_end do |obj, args|
        render partial: 'issues/redmine_cut_tag_end', layout: false
      end
    end
  end
end

