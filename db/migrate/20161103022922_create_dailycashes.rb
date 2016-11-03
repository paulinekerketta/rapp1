class CreateDailycashes < ActiveRecord::Migration[5.0]
  def change
    create_table :dailycashes do |t|
      t.datetime :date
      t.integer :sale
      t.integer :visa
      t.integer :discount
      t.integer :cashpurchase
      t.integer :onlinepaidorder
      t.integer :totaldriverpayout
      t.integer :banklodgment

      t.timestamps
    end
  end
end
