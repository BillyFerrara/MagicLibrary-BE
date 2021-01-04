class CreateSpells < ActiveRecord::Migration[6.0]
  def change
    create_table :spells do |t|
      t.string :title
      t.string :description
      t.string :damage_type

      t.timestamps
    end
  end
end
