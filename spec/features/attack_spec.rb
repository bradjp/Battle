feature 'Attack' do
  scenario 'allow player 1 to attack player 2' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content 'Successful attack on Silver!'  
  end
end