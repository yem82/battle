feature 'Submit player names in forms' do
  scenario "shows player names" do
    visit('/')
      fill_in :player_1_name, with: 'James'
      fill_in :player_2_name, with: 'David'
    click_button 'Submit'
    expect(page).to have_content 'James vs David'
  end
end
