# frozen_string_literal: true
require 'securerandom'
# == Schema Information
#
# Table name: tickets
#
#  _id             :string(255)      not null, primary key
#  url             :string(255)
#  external_id     :string(255)
#  type            :string(255)
#  subject         :string(255)
#  description     :string(255)
#  priority        :string(255)
#  status          :string(255)
#  submitter_id    :integer
#  assignee_id     :integer
#  organization_id :integer
#  tags            :string(255)
#  has_incidents   :boolean
#  due_at          :datetime
#  via             :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :ticket do
    _id { SecureRandom.hex }
    url { 'MyString' }
    external_id { 'MyString' }
    created_at { '2019-06-12 18:42:22' }
    type { '' }
    subject { 'MyString' }
    description { 'MyString' }
    priority { 'MyString' }
    status { 'MyString' }
    submitter_id { 1 }
    assignee_id { 1 }
    organization_id { 1 }
    tags { 'MyString' }
    has_incidents { false }
    due_at { '2019-06-12 18:42:22' }
    via { 'MyString' }
  end
end
