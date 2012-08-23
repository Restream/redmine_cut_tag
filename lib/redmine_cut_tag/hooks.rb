module RedmineCutTag
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_issues_show_description_bottom,
              :partial => 'hooks/redmine_cut_tag/includes'
  end
end
