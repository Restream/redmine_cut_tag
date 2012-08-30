
require File.expand_path('../../../../test_helper', __FILE__)

class MacrosTest < ActionController::IntegrationTest

  fixtures :users, :roles, :trackers

  def setup
    @project = Project.generate!
    @issue = Issue.generate_for_project! @project,
               :description => "{{cut_start()}}text{{cut_end}"
  end

  def test_cut_tag_macro_was_applied
    get "/issues/#{@issue.id}"

    assert_response :success
    assert_select 'div.cut_tag' do
      assert_select 'div.cut_tag_content'
    end
  end
end
