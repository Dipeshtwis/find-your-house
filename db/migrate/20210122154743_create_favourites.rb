class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.integer :user_id
      t.integer :house_id

      t.timestamps
    end
    add_foreign_key :favourites, :users
    add_foreign_key :favourites, :houses 
  end
end
