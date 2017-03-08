class EditLayoutProductCopy < ActiveRecord::Migration[5.0]
  def change
    change_table :layouts do |t|
      t.text :dining_copy
      t.text :living_copy
      t.text :bedroom_copy
      t.text :promo_copy
    end
  end
end
