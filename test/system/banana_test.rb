require 'application_system_test_case'

class HomepageTest < ApplicationSystemTestCase
  test "create banana" do
    count_before = Banana.count
    visit '/'
    click_link 'New Banana'
    assert_text 'New Banana'
    fill_in 'Grams', with: 22
    click_on 'Create Banana'
    assert_text 'Banana created'

    # .. multiple threads inside a transactional test .. see consistent
    # database state.
    # https://github.com/rails/rails/pull/28083
    assert_equal(count_before + 1, Banana.count)
  end
end
