require 'rails_helper'

RSpec.describe Group, type: :model do
  subject { Group.new(name:'necessary',icon:'link-to-logo',user_id:1) }
  before { subject.save }
  it 'should not be valid if name is nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
  it 'should not be valid if icon is nil' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end
  it 'should not be valid if user_id is nil' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end