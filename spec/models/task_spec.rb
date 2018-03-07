require 'rails_helper'


RSpec.describe Task, type: :model do
  context 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_length_of(:title).is_at_least(1) }
    it { should validate_length_of(:title).is_at_most(30) }

    it { should validate_presence_of(:description) }

    it { should validate_presence_of(:due_date) }

    it { should validate_presence_of(:priority) }
    it { should validate_numericality_of(:priority) }
    it { should allow_values(1, 2, 3, 4, 5).for(:priority) }
  end

  context 'associations' do
    it { should belong_to(:user) }
  end
end
