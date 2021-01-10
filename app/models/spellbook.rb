class Spellbook < ApplicationRecord
  has_many :spells, dependent: :destroy
end
