class CreateSpellbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :spellbooks do |t|
      t.string :title
      t.references :spells, null: false, foreign_key: true

      t.timestamps
    end
  end
end
