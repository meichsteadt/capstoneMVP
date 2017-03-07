class AddBrandImage < ActiveRecord::Migration[5.0]
  def change
    change_table :brands do |t|
      t.attachment :image
    end
  end
end
