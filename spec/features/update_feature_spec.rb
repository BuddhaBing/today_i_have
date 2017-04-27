feature 'viewing updates' do
  context 'no updates exist' do
    it 'displays a message that no updates exist yet' do
      sign_up
      visit '/'
      expect(page).to have_content("No updates yet")
    end
  end
end
feature 'Creating an update' do
  context 'user is logged in' do
    before do
      sign_up
    end
    it 'user can create an update' do
      expect(page).to have_link "New Update"
      expect{create_update}.to change{Update.count}.by(1)
      expect(page).to have_content 'Update was successfully created.'
    end
    it 'user cannot create an update unless all fields are completed' do
      create_update(title = "",
                        details = "",
                        tags = "")
      expect(page).not_to have_content 'Update was successfully created.'
      expect(page).to have_content "Title can't be blank"
      expect(page).to have_content "Details can't be blank"
      expect(page).to have_content "Tag list can't be blank"
    end
  end
  context 'user is not logged in' do
    it 'user cannot create an update' do
      visit '/'
      expect(page).not_to have_link "New Update"
    end
  end
end
