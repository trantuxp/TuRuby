class AddPartNumberToDanhmucs < ActiveRecord::Migration[6.1]
  def change
    add_column :danhmucs, :mota, :text
  end
end
