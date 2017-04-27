def create_update(title = "Built a rails app",
                  details = "Today I build a Rails app called 'Today I Learned'.",
                  tags = "rails")
  click_link "New Update"
  fill_in "Title", with: title
  fill_in "Details", with: details
  fill_in "Tags", with: tags
  click_button "Post Update"
end
