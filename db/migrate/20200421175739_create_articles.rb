class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.references :source, null: false, foreign_key: true
      t.string :title
      t.string :description
      t.string :url
      t.string :published
      t.string :content

      t.timestamps
    end
  end
end
