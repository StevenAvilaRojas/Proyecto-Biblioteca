class CreateMyarticles < ActiveRecord::Migration[6.0]
  def change
    create_table :myarticles do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :article, null: false, foreign_key: true
      t.time :time
      t.date :date

      t.timestamps
    end
  end
end
