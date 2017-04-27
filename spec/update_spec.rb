describe Update do

  before do
    FactoryGirl.create_list(:user, 1)
  end

  context '#title' do
    it "should require a title" do
      expect(FactoryGirl.build(:update, details: "some details", title: "",
                                tag_list: "awesomeTag", user_id: User.first.id)
                                ).not_to be_valid
    end
    it "title can only be 30 characters or less" do
      title = "A" * 31
      expect(FactoryGirl.build(:update, details: "some details", title: title,
                                tag_list: "awesomeTag", user_id: User.first.id)
                                ).not_to be_valid
    end
  end
  context '#details' do
    it "should require details" do
      expect(FactoryGirl.build(:update, title: "A title", details: "",
                                tag_list: "awesomeTag", user_id: User.first.id)
                                ).not_to be_valid
    end
    it "title can only be 500 characters or less" do
      title = "A" * 501
      expect(FactoryGirl.build(:update, details: "some details", tag_list: "awesomeTag",
                                title: title, user_id: User.first.id)
                                ).not_to be_valid
    end
  end
  context '#tags' do
    it "should require some tags" do
      expect(FactoryGirl.build(:update, title: "A title", details: "some details",
                                user_id: User.first.id)).not_to be_valid
    end
  end
  context 'time & user limitations' do
    it 'should not allow a user to post more than once per day' do
      create_new_update
      expect{create_new_update}.to raise_error
    end
  end

end

def create_new_update
  update = Update.create(title: "A title", details: "some details",
                tag_list: "awesomeTag", user_id: User.first.id)
  update.save!
end

def new_update
  FactoryGirl.build(:update, title: "A title", details: "some details",
                            tag_list: "awesomeTag", user_id: User.first.id)
end
