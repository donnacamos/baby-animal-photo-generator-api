class AddForeignKeyToPhotos < ActiveRecord::Migration[6.0]
  def change 
    add_column :photos, :category_id, :integer
  end
end
