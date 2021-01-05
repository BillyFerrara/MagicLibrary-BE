class SpellbookSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :spells
end
