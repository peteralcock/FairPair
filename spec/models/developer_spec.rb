require 'rails_helper'
RSpec.describe Developer, type: :model do
  it "is valid with a name" do
    developer = Developer.new(name: 'Alice')
    expect(developer).to be_valid
  end

  it "is invalid without a name" do
    developer = Developer.new(name: nil)
    expect(developer).not_to be_valid
  end

end
