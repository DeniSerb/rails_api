require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }


    it { should validate_length_of(:password).is_at_least(6) }
    it { should validate_length_of(:password_confirmation).is_at_least(6) }
    it { should have_secure_password }


    it { should validate_length_of(:first_name).is_at_least(3) }
    it { should validate_presence_of(:first_name) }


    it { should validate_presence_of(:last_name) }
    it { should validate_length_of(:last_name).is_at_least(4) }

  end

  context 'associations' do
    it { should have_many(:tasks) }
  end

  context 'accept nested attributes for' do
    it { accept_nested_attributes_for(:tasks) }
  end
end
