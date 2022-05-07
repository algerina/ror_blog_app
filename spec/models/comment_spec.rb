require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject do
    Comment.new(
      author_id: 2,
      post_id: 2,
      text: 'My best article'
    )
  end
  before { subject.save }

  it 'it should have a text' do
    subject.text = nil
    expect(subject).to_not be_valid
  end
end
