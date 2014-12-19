class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :review
      t.integer :rating
      t.integer :amazon_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
