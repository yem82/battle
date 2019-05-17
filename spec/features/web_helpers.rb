def sign_in_and_play
  visit('/')
    fill_in :p1, with: 'James'
    fill_in :p2, with: 'David'
  click_button 'Submit'
end
