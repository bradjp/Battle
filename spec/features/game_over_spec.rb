feature 'game over' do
  scenario 'allows the game to end' do
    sign_in_and_play
    19.times { attack_and_return }
    expect(page).to have_content 'Game over!'
  end
end