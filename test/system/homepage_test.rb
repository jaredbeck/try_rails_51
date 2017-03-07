require 'application_system_test_case'

class HomepageTest < ApplicationSystemTestCase
  test "homepage" do
    visit '/'
    assert_text 'Hello, rails 5.1'
    fill_in 'a', with: 2
    fill_in 'b', with: 2
    click_on 'Calculate'
    assert_equal '4', find_field('c').value
    fill_in 'b', with: 3
    click_on 'Calculate'
    assert_equal '5', find_field('c').value
  end
end
