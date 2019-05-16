feature 'Testing hit-points' do
  scenario "can view opponents hit-points" do
    sign_in_and_play
    expect(page).to have_content "David: 50HP"
  end
end

feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link "Attack"
    expect(page). to have_content 'James attacked David'
  end
end
