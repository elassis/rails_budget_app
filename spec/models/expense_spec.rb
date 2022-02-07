require 'rails_helper'

RSpec.describe Expense, type: :model do
  subject { Expense.new(author_id:1,name:'cinema',amount:50,user_id:1) }
  before { subject.save }
  it 'should be invalid if author_id is nil' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end
  it 'should be invalid if name is nil' do
    subject.name = nil 
    expect(subject).to_not be_valid
  end
  it 'should be invalid if amount is nil' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end
  it 'should be invalid if user_id is nil' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end