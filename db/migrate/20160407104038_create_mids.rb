class CreateMids < ActiveRecord::Migration
  def change
    create_table :mids do |t|
      t.integer :category_id
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
