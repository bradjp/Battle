feature 'Attack' do
  scenario 'allow player 1 to attack player 2' do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'Successful attack on Scratchy!'  
  end

  scenario 'Attacks reduce HP by 10' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Return')
    expect(page).to have_content 'Scratchy: 90/100HP'
    expect(page).not_to have_content 'Scratchy: 100/100HP'
  end

  scenario 'Player 2 attacks back' do
    sign_in_and_play
    click_button('Attack!')
    click_button('Return')
    click_button('Attack!')
    expect(page).to have_content 'Successful attack on Itchy!'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_button('Attack')
    click_button('Return')
    expect(page).not_to have_content 'Scratchy: 100/100HP'
    expect(page).to have_content 'Scratchy: 90/100HP'
  end
end