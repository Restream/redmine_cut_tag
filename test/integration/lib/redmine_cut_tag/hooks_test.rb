
require File.expand_path('../../../../test_helper', __FILE__)

class HooksTest < ActionController::IntegrationTest

  fixtures :users, :roles, :trackers, :projects

  def test_html_head_hook_response
    get '/'
    assert_response :success
    assert response.body.match /plugin_assets\/redmine_cut_tag\/javascripts\/redmine_cut_tag\.js/
    assert response.body.match /plugin_assets\/redmine_cut_tag\/stylesheets\/redmine_cut_tag\.css/
  end
end
