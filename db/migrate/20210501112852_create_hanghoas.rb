class CreateHanghoas < ActiveRecord::Migration[6.1]
  def change
    create_table :hanghoas do |t|
      t.string :tensp
      t.text :mota
      t.text :anh
      t.integer :soluong
      t.integer :dongia
      t.integer :iddanhmuc

      t.timestamps
    end
  end
end
