# frozen_string_literal: true

class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets, id: false do |t|
      t.primary_key :_id, :string, limit: 255
      t.string :url
      t.string :external_id
      t.string :type
      t.string :subject
      t.string :description
      t.string :priority
      t.string :status
      t.integer :submitter_id
      t.integer :assignee_id
      t.integer :organization_id
      t.string :tags
      t.boolean :has_incidents
      t.datetime :due_at
      t.string :via

      t.timestamps
    end
  end
end
