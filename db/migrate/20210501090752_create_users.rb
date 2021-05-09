class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :tendn
      t.string :matkhau
      t.string :tenuser
      t.string :diachi
      t.string :sodt
      t.string :email
      t.string :vaitro

      t.timestamps
    end
  end
end
