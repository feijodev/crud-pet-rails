class Medical < ApplicationRecord
  # model association
  belongs_to :pet

  # validation
  validates_presence_of :symptom, :treatment
end
