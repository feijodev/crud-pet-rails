require 'rails_helper'

RSpec.describe Medical, type: :model do
  # Association test
  # ensure an medical record belongs to a single pet record
  it { should belong_to(:pet) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:symptom) }
  it { should validate_presence_of(:treatment) }
end
