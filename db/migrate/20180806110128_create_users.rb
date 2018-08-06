class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.string :email
      t.string :password_digest
      t.boolean :admin
      t.integer :article_id
      t.integer :response_id

      t.timestamps
    end
  end
end
