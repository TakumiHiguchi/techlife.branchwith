class CreatePostCategoryRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :post_category_relations do |t|
      t.integer :post_id
      t.integer :category_id
      
      
      t.timestamps
    end
  end
end
