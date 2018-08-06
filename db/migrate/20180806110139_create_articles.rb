class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.text :story
      t.text :image
      t.integer :collecion_id
      t.datetime :date
      t.integer :response_id

      t.timestamps
    end
  end
end
