feature 'Testing names' do
  scenario '2 players can input their names' do
    sign_in_and_play
    expect(page).to have_content 'Itchy vs Scratchy'
  end
end
