class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :post_id
      t.integer :user_rating
      t.string :comment

      t.timestamps
    end
  end
end
