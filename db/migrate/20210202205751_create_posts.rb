class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :category
      t.string :airspace
      t.string :description
      t.integer :authors_rating
      t.string :video

      t.timestamps
    end
  end
end
