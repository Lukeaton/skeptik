class CreateArticlesCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :articles_collections do |t|
      t.integer :collection_id
      t.integer :article_id
    end
  end
end
