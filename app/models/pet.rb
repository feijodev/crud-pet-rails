class Pet < ApplicationRecord
  has_many :medicals, dependent: :destroy

  validates_presence_of :name, :birthday, :breed, :category

  enum category: [ :dog, :cat ].freeze
end
