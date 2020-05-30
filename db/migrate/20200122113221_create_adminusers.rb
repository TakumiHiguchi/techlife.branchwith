class CreateAdminusers < ActiveRecord::Migration[5.1]
  def change
    create_table :adminusers do |t|
      t.string :name,null: false
      t.string :mail,null: false
      t.string :password_digest,null: false
      t.string :token

      t.timestamps
    end
  end
end
