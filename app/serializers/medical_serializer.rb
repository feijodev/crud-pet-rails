class MedicalSerializer < ActiveModel::Serializer
  # attributes to be serialized  
  attributes :id, :symptom, :treatment
end
