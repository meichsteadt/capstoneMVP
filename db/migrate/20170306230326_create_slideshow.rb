class CreateSlideshow < ActiveRecord::Migration[5.0]
  def change
    create_table :slideshows do |t|
      t.integer :layout_id

      t.timestamps
    end
  end
end
