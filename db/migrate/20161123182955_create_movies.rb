class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :text
      t.string :url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
