class CreateListItem < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.belongs_to :list, foreign_key: true
    end
  end
end
