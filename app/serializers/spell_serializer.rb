class SpellSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :damage_type

end
