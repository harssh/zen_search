# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "json"
user_hash = JSON.parse(File.read("#{Rails.root}/db/data/users.json"))

user_hash.each do |user|

  User.find_or_create_by!(user)

end

organization_data = JSON.parse(File.read("#{Rails.root}/db/data/organizations.json"))

organization_data.each do |organization|

  Organization.find_or_create_by!(organization)

end

ticket_data = JSON.parse(File.read("#{Rails.root}/db/data/tickets.json"))

ticket_data.each do |ticket|

  Ticket.find_or_create_by!(ticket)

end

