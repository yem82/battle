feature 'Testing hit-points' do
  scenario "can view opponents hit-points" do
    sign_in_and_play
    expect(page).to have_content "David: 50HP"
  end
end
