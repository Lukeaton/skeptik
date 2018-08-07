class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.text :story
      t.text :image
      t.text :title
      t.datetime :date

      t.timestamps
    end
  end
end
