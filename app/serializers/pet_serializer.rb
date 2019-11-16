class PetSerializer < ActiveModel::Serializer
  # attributes to be serialized  
  attributes :id, :name, :birthday, :breed, :category
  # model association
  has_many :medicals
end
