require './test/test_helper'

class AboutTest < CapybaraTestCase
  def test_user_can_navigate_to_about_me_page
    visit '/'
    click_on 'About Me'
    
    assert_equal 200, page.status_code
    assert_equal '/about', current_path
    assert_equal true, page.has_content?('About Me!')
  end
end
