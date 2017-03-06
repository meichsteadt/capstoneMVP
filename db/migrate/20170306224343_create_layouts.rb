class CreateLayouts < ActiveRecord::Migration[5.0]
  def change
    create_table :layouts do |t|
      t.integer :store_id
      t.string :store_copy
      t.attachment :store_image
      t.attachment :css
      t.attachment :background

      t.timestamps
    end
  end
end
