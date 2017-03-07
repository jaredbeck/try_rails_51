class CreateBananas < ActiveRecord::Migration[5.1]
  def change
    create_table :bananas do |t|
      t.integer :grams, null: false
      t.timestamps
    end
  end
end
