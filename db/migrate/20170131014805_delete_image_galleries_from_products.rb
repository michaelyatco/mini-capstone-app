class DeleteImageGalleriesFromProducts < ActiveRecord::Migration[5.0]
  def change
    drop_table :image_galleries
  end
end
