require './test/test_helper'

class ErrorPageTest < CapybaraTestCase
  def test_user_sees_an_error_when_visiting_nonexistant_page
    visit '/nonexistantpage'

    refute page.has_content?('example')
    assert_equal 404, page.status_code
  end
end
