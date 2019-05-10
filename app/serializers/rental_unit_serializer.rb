class RentalUnitSerializer < ActiveModel::Serializer
  attributes :id, :address, :rooms, :bathrooms, :price_cents
  belongs_to :user
end
