require 'rails_helper'

RSpec.describe Pet, type: :model do
  # Association test
  # ensure Pet model has a 1:m relationship with the Medicals model
  it { should have_many(:medicals).dependent(:destroy) }
  # Validation tests
  # ensure columns name and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:birthday) }
  it { should validate_presence_of(:breed) }
  it { should validate_presence_of(:category) }
end
