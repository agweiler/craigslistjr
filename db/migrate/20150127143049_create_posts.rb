class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :desc
      t.string :price
      t.string :url
      t.date :date
      t.string :edit_key
      t.references :category
      t.timestamps null:false
    end
  end
end
