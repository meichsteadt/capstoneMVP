class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :brand_id
      t.integer :slideshow_id
      t.integer :price
      t.text :description
      t.attachment :image

      t.timestamps
    end
  end
end
