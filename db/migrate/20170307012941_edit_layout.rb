class EditLayout < ActiveRecord::Migration[5.0]
  def change
    change_table :layouts do |t|
      t.remove :css_file_name
      t.remove :css_content_type
      t.remove :css_file_size
      t.remove :css_updated_at
      t.remove :background_file_name
      t.remove :background_content_type
      t.remove :background_file_size
      t.remove :background_updated_at
    end
  end
end
