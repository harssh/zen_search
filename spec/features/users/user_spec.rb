# frozen_string_literal: true

# Feature: User page
#   As a visitor
#   I want to search users
#   So I can go through user details
feature 'Users page' do
  # Create user
  given!(:user) { FactoryBot.create(:user) }
  given!(:user_blank) { FactoryBot.create(:user, name: nil) }
  # Scenario: Search user details
  #   Given I am a visitor
  #   When I visit users page and search with id
  #   Then I see "User" details
  scenario 'search user with id' do
    visit users_path
    find(:css, ".field_select select").find(:option, "Id").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => user.id
    click_button 'Search'
    expect(page).to have_text(user.name)
  end


  # Scenario: Search user details
  #   Given I am a visitor
  #   When I visit users page and search with name
  #   Then I see "User" details
  scenario 'search user with name' do
    visit users_path
    find(:css, ".field_select select").find(:option, "Name").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => user.name
    click_button 'Search'
    expect(page).to have_text(user.name)
  end

  # Scenario: Not able to Search user details
  #   Given I am a visitor
  #   When I visit users page and search with wrong name
  #   Then I do not see "User" details
  scenario 'search user with wrong name' do
    visit users_path
    find(:css, ".field_select select").find(:option, "Name").select_option
    find(:css, ".predicate_select select").find(:option, "equals").select_option
    fill_in 'value', :with => "ABC"
    click_button 'Search'
    expect(page).to_not have_text(user.name)
  end

  # Scenario: Not able to Search user details
  #   Given I am a visitor
  #   When I visit users page and search with blank name
  #   Then I see "User" details
  scenario 'search user with blank name' do
    visit users_path
    find(:css, ".field_select select").find(:option, "Name").select_option
    find(:css, ".predicate_select select").find(:option, "blank").select_option
    fill_in 'value', :with => true
    click_button 'Search'
    expect(page).to have_text(user_blank.id)
  end
end
