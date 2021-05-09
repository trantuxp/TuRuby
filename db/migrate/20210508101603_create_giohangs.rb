class CreateGiohangs < ActiveRecord::Migration[6.1]
  def change
    create_table :giohangs do |t|
      t.integer :idsp
      t.integer :iduser
      t.integer :soluong

      t.timestamps
    end
  end
end
