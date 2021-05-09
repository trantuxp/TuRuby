class CreateSanphams < ActiveRecord::Migration[6.1]
  def change
    create_table :sanphams do |t|
      t.string :tensp
      t.text :mota
      t.integer :soluong
      t.string :dongia
      t.integer :iddanhmuc
      

      t.timestamps
    end
  end
end
