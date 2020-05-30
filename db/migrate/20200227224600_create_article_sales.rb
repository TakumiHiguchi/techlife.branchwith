class CreateArticleSales < ActiveRecord::Migration[5.1]
  def change
    create_table :article_sales do |t|
      t.integer :article_id
      t.integer :sales_type
      t.integer :price

      t.timestamps
    end
  end
end
