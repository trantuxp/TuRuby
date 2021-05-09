class CreateChitietdhs < ActiveRecord::Migration[6.1]
  def change
    create_table :chitietdhs do |t|
      t.integer :iddonhang
      t.integer :idsp
      t.integer :soluong
      t.string :dongia

      t.timestamps
    end
  end
end
