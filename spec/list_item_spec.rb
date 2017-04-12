require 'rails_helper'

RSpec.describe ListItem, type: :model do
  let(:list) { List.new }
  subject(:list_item) do
    ListItem.new(list: list)
  end

  it "is valid with valid attributes" do
    expect(list).to be_valid
  end

  it "is not valid without a playlist" do
    list_item.list = nil
    expect(list_item).to_not be_valid
  end
end
