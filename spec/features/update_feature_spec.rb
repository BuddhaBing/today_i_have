feature 'viewing updates' do
  context 'no updates exist' do
    it 'displays a message that no updates exist yet' do
      sign_up
      visit '/'
      expect(page).to have_content("No updates yet")
    end
  end
end
feature 'Creating a update' do
  context 'user is logged in' do
    it 'user can create a update' do
      sign_up
      expect(page).to have_link "New Update"
      expect{create_update}.to change{Update.count}.by(1)
    end
  end
  context 'user is not logged in' do
    it 'user cannot create a update' do
      visit '/'
      expect(page).not_to have_link "New Update"
    end
  end
end
