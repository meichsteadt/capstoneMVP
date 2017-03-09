class EditStoreLat < ActiveRecord::Migration[5.0]
  def change
    change_table :stores do |t|
      t.string :lat
      t.string :lng
    end
  end
end
