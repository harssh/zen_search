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

FactoryBot.define do
  factory :user do
    url { 'MyString' }
    external_id { 'MyString' }
    name { 'MyString' }
    active { false }
    verified { false }
    shared { false }
    locale { 'MyString' }
    timezone { 'MyString' }
    last_login_at { '2019-06-12 14:26:38' }
    email { 'MyString' }
    phone { 'MyString' }
    signature { '' }
    organization_id { 1 }
    tags { 'MyString' }
    suspended { false }
    role { 'MyString' }
  end
end
