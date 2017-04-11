require 'test_helper'

class ListHasManyListItemsTestCase < ActiveSupport::TestCase
  def test_list_item_is_not_valid_without_list
    list_item = ListItem.new

    assert !list_item.valid?
    assert_includes list_item.errors[:list], 'must exist'
  end
end
