class Update < ApplicationRecord
  belongs_to :user
  acts_as_taggable
  validates :title, presence: true, length: { maximum: 30,
    too_long: "%{count} characters is the maximum allowed" }
  validates :details, presence: true, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }
end
