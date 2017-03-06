class CreateBrands < ActiveRecord::Migration[5.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :url
      t.integer :store_id

      t.timestamps
    end
  end
end
