# frozen_string_literal: true

# Feature: Organization page
#   As a visitor
#   I want to search organizations
#   So I can go through organization details
feature 'Organization page' do
  # Create organization
  given!(:organization) { FactoryBot.create(:organization) }
  given!(:organization_blank) { FactoryBot.create(:organization, name: nil) }
  # Scenario: Search organization details
  #   Given I am a visitor
  #   When I visit organizations page and search
  #   Then I see "Organization" details
  scenario 'search organization with url' do
    visit organizations_path
    find(:css, ".field_select select").find(:option, "Url").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => organization.url
    click_button 'Search'
    expect(page).to have_text(organization.url)
  end


  # Scenario: Search organization details
  #   Given I am a visitor
  #   When I visit organizations page and search
  #   Then I see "Organization" details
  scenario 'search organization with details' do
    visit organizations_path
    find(:css, ".field_select select").find(:option, "Details").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => organization.details
    click_button 'Search'
    expect(page).to have_text(organization.details)
  end

  # Scenario: Not able to Search organization details
  #   Given I am a visitor
  #   When I visit organizations page and search
  #   Then I see "Organization" details
  scenario 'search organization with wrong details' do
    visit organizations_path
    find(:css, ".field_select select").find(:option, "Details").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => "ABC"
    click_button 'Search'
    expect(page).to_not have_text(organization.id)
  end

  # Scenario: Not able to Search organization details
  #   Given I am a visitor
  #   When I visit users page and search with blank name
  #   Then I see "Organization" details
  scenario 'search organization with blank name' do
    visit organizations_path
    find(:css, ".field_select select").find(:option, "Name").select_option
    find(:css, ".predicate_select select").find(:option, "blank").select_option
    fill_in 'value', :with => true
    click_button 'Search'
    expect(page).to have_text(organization_blank.id)
  end
end
