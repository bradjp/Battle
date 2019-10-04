feature 'Switch turns' do
  context 'current turn' do


    scenario 'game begins' do
      sign_in_and_play
      expect(page).to have_content 'Itchy: make your move...'
    end

    scenario 'player 1 has attacked' do
      sign_in_and_play
      click_button('Attack!')
      click_button('Return')
      expect(page).to have_content 'Scratchy: make your move...'
      expect(page).not_to have_content 'Itchy: make your move...'
    end
  end
end