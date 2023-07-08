require 'rails_helper'

RSpec.describe Sprint, type: :model do
  it { should validate_presence_of(:number) }
  it { should have_many(:pairings) }
  it { should have_many(:developers).through(:pairings) }
end
