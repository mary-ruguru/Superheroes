class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id

  attributes :strength, :hero_id, :power_id
  # has_one :hero
  # has_one :power
end
