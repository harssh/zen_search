# frozen_string_literal: true

# == Schema Information
#
# Table name: organizations
#
#  id             :bigint           not null, primary key
#  url            :string(255)
#  external_id    :string(255)
#  name           :string(255)
#  domain_names   :string(255)
#  created_at     :datetime         not null
#  details        :string(255)
#  shared_tickets :boolean
#  tags           :string(255)
#  updated_at     :datetime         not null
#

FactoryBot.define do
  factory :organization do
    url { 'MyString' }
    external_id { 'MyString' }
    name { 'MyString' }
    domain_names { 'MyString' }
    created_at { '2019-06-12 15:12:18' }
    details { 'MyString' }
    shared_tickets { false }
    tags { 'MyString' }
  end
end
