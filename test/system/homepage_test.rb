require 'application_system_test_case'

class HomepageTest < ApplicationSystemTestCase
  test "homepage" do
    visit '/'
    assert_text 'Hello, rails 5.1'
    fill_in 'a', with: 2
    fill_in 'b', with: 2
    click_on 'Calculate'
    assert_selector '#c', text: '4'
    fill_in 'b', with: 3
    click_on 'Calculate'
    assert_selector '#c', text: '5'
  end
end
