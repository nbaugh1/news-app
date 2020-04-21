class CreateSources < ActiveRecord::Migration[6.0]
  def change
    create_table :sources do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.string :source_id
      t.string :description
      t.string :url
      t.string :category
      t.string :language
      t.string :country

      t.timestamps
    end
  end
end
