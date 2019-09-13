class CreateParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :participants do |t|
      t.belongs_to :article, null: false, foreign_key: true
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
