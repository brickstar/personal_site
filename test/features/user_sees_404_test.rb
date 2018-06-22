require './test/test_helper'

class HomepageTest< CapybaraTestCase
  def test_user_sees_404_when_visiting_bogus_page
    visit '/bingbong'

    assert_equal true, page.has_content?('Page not found.')
    assert_equal 404, page.status_code
  end
end
