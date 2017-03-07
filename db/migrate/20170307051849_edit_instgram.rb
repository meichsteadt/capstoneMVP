class EditInstgram < ActiveRecord::Migration[5.0]
  def change
    change_table :stores do |t|
      t.remove :instgram
      t.string :instagram
    end
  end
end
