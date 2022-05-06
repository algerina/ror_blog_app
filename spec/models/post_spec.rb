require 'rails_helper'

RSpec.describe Post, type: :model do
  subject do
    Post.new(
      author_id: 1,
      title: 'One of my posts',
      text: 'Between light and shadow',
      comments_counter: 1,
      likes_counter: 1
    )
  end
  before { subject.save }

  it 'should have a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'title maximum length is 250' do
    subject.title = 'a' * 251
    expect(subject).to_not be_valid
  end

  it 'likes counter must be an integer greater or equal to 0' do
    subject.likes_counter = nil
    expect(subject).to_not be_valid
  end

  it 'comments counter must be an integer greater or equal to 0' do
    subject.comments_counter = nil
    expect(subject).to_not be_valid
  end
end
