class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :name
      t.text :description
      t.belongs_to :editorial, null: false, foreign_key: true

      t.timestamps
    end
  end
end
