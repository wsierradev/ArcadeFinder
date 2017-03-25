require 'rails_helper'

feature "User creates new arcade" do
  let!(:user) { FactoryGirl.create(:user) }

  scenario "clicking add arcade will add arcade to list" do
    sign_in(user)
    click_link 'Arcades'
    click_link 'Add New Arcade'
    fill_in 'Name', with: "Pinball Place"
    fill_in 'Street1', with: "123 fake street"
    fill_in 'Street2', with: "apt nil"
    fill_in 'City', with: "Fakesville"
    fill_in 'Zip', with: "11111"

    click_button 'Add Arcade'

    expect(page).to have_content("Item added successfully")
    expect(page).to have_content("Pinball Place")
    expect(page).to have_content("123 fake street")
    expect(page).to have_content("apt nil")
    expect(page).to have_content("Fakesville")
    expect(page).to have_content("AL")
    expect(page).to have_content("11111")
    expect(page).to_not have_content("errors prohibited this item from being saved:")
    expect(page).to_not have_content("can't be blank")

  end

  scenario "clicking add Arcade will add item to list" do
    sign_in(user)
    click_link 'Arcades'
    click_link 'Add New Arcade'
    fill_in 'Name', with: nil
    fill_in 'Street1', with: nil
    fill_in 'Street2', with: nil
    fill_in 'City', with: nil
    fill_in 'Zip', with: nil
    click_button 'Add Arcade'

    expect(page).to_not have_content("Arcade added successfully")

    expect(page).to have_content("Name can't be blank")
    expect(page).to have_content("Street1 can't be blank")
    expect(page).to have_content("City can't be blank")
    expect(page).to have_content("Zip can't be blank")

  end

  scenario 'Unregistered user cannot add item' do
    visit root_path
    click_link 'Arcades'
    click_link 'Add New Arcade'

    expect(page).to have_content("Please log in to use this feature")
    expect(page).to_not have_content("New Arcade Form")

  end
end
