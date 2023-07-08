require 'rails_helper'

RSpec.describe Pairing, type: :model do
  it { should belong_to(:sprint) }
  it { should belong_to(:developer) }
end
