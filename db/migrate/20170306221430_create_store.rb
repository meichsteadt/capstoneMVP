class CreateStore < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :hours
      t.string :facebook
      t.string :instgram
      t.string :twitter
      t.string :pinterest
      t.string :email
      t.string :password_hash

      t.timestamps
    end
  end
end
