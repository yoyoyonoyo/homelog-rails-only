class Like < ApplicationRecord
  belongs_to :parise
  belongs_to :user

  validates_uniqueness_of :parise_id, scope: :user_id
end
