describe Update do

  before do
    FactoryGirl.create_list(:user, 1)
  end
  
  context '#title' do
    it "should require a title" do
      expect(FactoryGirl.build(:update, details: "some details", title: "", user_id: User.first.id)).not_to be_valid
    end
    it "title can only be 30 characters or less" do
      title = "A" * 31
      expect(FactoryGirl.build(:update, details: "some details", title: title, user_id: User.first.id)).not_to be_valid
    end
  end
  context '#details' do
    it "should require details" do
      expect(FactoryGirl.build(:update, title: "A title", details: "", user_id: User.first.id)).not_to be_valid
    end
    it "title can only be 200 characters or less" do
      title = "A" * 201
      expect(FactoryGirl.build(:update, details: "some details", title: title, user_id: User.first.id)).not_to be_valid
    end
  end

end
