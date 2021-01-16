class CreateSpellbooks < ActiveRecord::Migration[6.0]
  def change
    create_table :spellbooks do |t|
      t.string :title
      t.index [ :spellbook_id, :title ], unique: true

      t.timestamps
    end
  end
end
