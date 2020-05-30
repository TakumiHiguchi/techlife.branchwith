class CreateComents < ActiveRecord::Migration[5.1]
  def change
    create_table :coments do |t|
      t.string :key
      t.string :name
      t.string :coment

      t.timestamps
    end
  end
end
