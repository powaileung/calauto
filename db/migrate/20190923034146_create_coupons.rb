class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.string :title
      t.text :description
      t.decimal :cost
      t.integer :user_id
      t.timestamps
    end
    add_index :coupons, :user_id
  end
end
