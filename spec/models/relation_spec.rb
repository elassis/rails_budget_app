require 'rails_helper'

RSpec.describe Relation, type: :model do
  subject { Relation.new(group_id: 1, expense_id: 1) }
  before { subject.save }
  it 'should be invalid if group_id is nil' do
    subject.group_id = nil
    expect(subject).to_not be_valid
  end
  it 'should be invalid if expense_id is nil' do
    subject.expense_id = nil
    expect(subject).to_not be_valid
  end
end
