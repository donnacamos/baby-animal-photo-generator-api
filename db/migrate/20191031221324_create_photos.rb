class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :image_url 
      t.string :artist_name 
      t.timestamps
    end
  end
end
