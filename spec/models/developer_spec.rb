require 'rails_helper'

RSpec.describe Developer, type: :model do
  it { should validate_presence_of(:name) }
  it { should have_many(:pairings) }
  it { should have_many(:sprints).through(:pairings) }
end
