class CreateImageGalleries < ActiveRecord::Migration[5.0]
  def change
    create_table :image_galleries do |t|
      t.string :url

      t.timestamps
    end
  end
end
