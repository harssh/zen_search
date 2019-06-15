# frozen_string_literal: true

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

require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it "should have a valid factory" do
    ticket = FactoryBot.build(:ticket)
    expect(ticket).to be_valid
  end
end
