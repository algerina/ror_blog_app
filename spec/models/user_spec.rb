require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(id: 3, name: 'User 3', posts_counter: 0) }

  before { subject.save }

  it 'should have a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Posts counter should not be nil' do
    subject.posts_counter = nil
    expect(subject).to_not be_valid
  end
end
