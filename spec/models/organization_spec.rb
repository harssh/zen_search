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

require 'rails_helper'

RSpec.describe Organization, type: :model do
  it "should have a valid factory" do
    organization = FactoryBot.build(:organization)
    expect(organization).to be_valid
  end
end
