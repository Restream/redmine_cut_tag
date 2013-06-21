require File.expand_path('../../../test_helper', __FILE__)
require 'issues_controller'

class RedmineCutTag::IssuesControllerTest < ActionController::TestCase
  fixtures :projects,
           :users,
           :roles,
           :members,
           :member_roles,
           :issues,
           :issue_statuses,
           :versions,
           :trackers,
           :projects_trackers,
           :issue_categories,
           :enabled_modules,
           :enumerations

  include Redmine::I18n

  def setup
    @controller = IssuesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    @user = User.find(2)
    @project = Project.find(1)
    User.current = @user
    @request.session[:user_id] = 2
  end

  def test_cut_tag_macro_was_applied
    issue = Issue.find(1)
    issue.description = '{{cut_start()}}text{{cut_end}}'
    issue.save!
    get :show, :id => issue.id
    assert_response :success
    assert_select 'div.cut_tag' do
      assert_select 'div.cut_tag_content'
    end
  end

end
