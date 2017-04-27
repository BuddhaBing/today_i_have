class Update < ApplicationRecord
  belongs_to :user
  acts_as_taggable

  validates_presence_of :title, :details, :tag_list
  validates :title, length: { maximum: 30,
    too_long: "%{count} characters is the maximum allowed" }
  validates :details, length: { maximum: 200,
    too_long: "%{count} characters is the maximum allowed" }

  scope :today, -> { where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day) }

  validates_uniqueness_of :user_id, conditions: -> { today },
                           message: "is only allowed one update per day"

  validates_uniqueness_of :title, through: :user_id, conditions: -> { today },
                           message: "can't be used twice in one day by the same user"

end
