class AddLayoutCss < ActiveRecord::Migration[5.0]
  def change
    change_table :layouts do |t|
      t.integer :css_id
    end
  end
end
