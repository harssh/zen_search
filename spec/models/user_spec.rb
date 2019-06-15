# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  url             :string(255)
#  external_id     :string(255)
#  name            :string(255)
#  alias           :string(255)
#  active          :boolean
#  verified        :boolean
#  shared          :boolean
#  locale          :string(255)
#  timezone        :string(255)
#  last_login_at   :datetime
#  email           :string(255)
#  phone           :string(255)
#  signature       :string(255)
#  organization_id :integer
#  tags            :string(255)
#  suspended       :boolean
#  role            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


require 'rails_helper'

RSpec.describe User, type: :model do
  it "should have a valid factory" do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end
end
