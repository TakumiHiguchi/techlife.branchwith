class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :key
      t.string :thumbnail_path
      t.string :title
      t.date :date
      t.string :author_key
      t.text :content
      t.text :pickup_content

      t.timestamps
    end
  end
end
