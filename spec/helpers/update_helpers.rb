def create_update(title = "Built a rails app", details = "Today I build a Rails app called 'Today I Learned'.")
  click_link "New Update"
  fill_in "Title", with: title
  fill_in "Details", with: details
  click_button "Post Update"
end
