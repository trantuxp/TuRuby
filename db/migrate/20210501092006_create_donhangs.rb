class CreateDonhangs < ActiveRecord::Migration[6.1]
  def change
    create_table :donhangs do |t|
      t.integer :iduser
      t.string :loinhan
      t.integer :tongsp
      t.string :tongtien
      t.string :trangthai

      t.timestamps
    end
  end
end
