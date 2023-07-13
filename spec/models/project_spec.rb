RSpec.describe Project, type: :model do
  it "is valid with a name, number of sprints, and developers" do
    developer1 = Developer.new(name: 'Alice')
    developer2 = Developer.new(name: 'Bob')
    project = Project.new(name: 'Project 1', number_of_sprints: 5)
    expect(project).to be_valid
  end

  it "is invalid without a name" do
    project = Project.new(name: nil)
    expect(project).not_to be_valid
  end

  it "is invalid without a number of sprints" do
    project = Project.new(number_of_sprints: nil)
    expect(project).not_to be_valid
  end

end
