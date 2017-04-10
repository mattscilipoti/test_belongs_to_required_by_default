require 'test_helper'

class ListHasManyListItemsTestCase < Minitest::Test
  def test_list_item_is_not_valid_without_list
    list_item = ListItem.new

    assert !list_item.valid?
    assert list_item.errors[:list].include?('must exist')
  end
end
