module RedmineCutTag
  class Hooks < Redmine::Hook::ViewListener
    render_on :view_layouts_base_html_head,
              :partial => 'hooks/redmine_cut_tag/includes'
  end
end
