# frozen_string_literal: true

# Feature: Ticket page
#   As a visitor
#   I want to search tickets
#   So I can go through ticket details
feature 'Ticket page' do
  # Create ticket
  given!(:ticket) { FactoryBot.create(:ticket) }
  given!(:ticket_blank) { FactoryBot.create(:ticket, description: nil) }
  # Scenario: Search ticket details
  #   Given I am a visitor
  #   When I visit tickets page and search
  #   Then I see "Ticket" details
  scenario 'search ticket with id' do
    visit tickets_path
    find(:css, ".field_select select").find(:option, "Id").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => ticket.id
    click_button 'Search'
    expect(page).to have_text(ticket.type)
  end


  # Scenario: Search ticket details
  #   Given I am a visitor
  #   When I visit tickets page and search
  #   Then I see "Ticket" details
  scenario 'search ticket with type' do
    visit tickets_path
    find(:css, ".field_select select").find(:option, "Type").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => ticket.type
    click_button 'Search'
    expect(page).to have_text(ticket.type)
  end

  # Scenario: Not able to Search ticket details
  #   Given I am a visitor
  #   When I visit tickets page and search
  #   Then I see "Ticket" details
  scenario 'search ticket with wrong type' do
    visit tickets_path
    find(:css, ".field_select select").find(:option, "Type").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => "ABC"
    click_button 'Search'
    expect(page).to_not have_text(ticket.id)
  end

  # Scenario: Not able to Search ticket details
  #   Given I am a visitor
  #   When I visit users page and search with blank description
  #   Then I see "Ticket" details
  scenario 'search ticket with blank description' do
    visit tickets_path
    find(:css, ".field_select select").find(:option, "Description").select_option
    find(:css, ".predicate_select select").find(:option, "blank").select_option
    fill_in 'value', :with => true
    click_button 'Search'
    expect(page).to have_text(ticket_blank.id)
  end
end
