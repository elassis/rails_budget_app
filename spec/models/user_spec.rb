require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(name:'enmanuel') }
  before { subject.save }
  it 'should not be valid if name is nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end