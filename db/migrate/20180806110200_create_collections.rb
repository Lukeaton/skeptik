class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :article_id
      t.text :title
      
      t.timestamps
    end
  end
end
