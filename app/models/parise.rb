class Parise < ApplicationRecord
  has_many :likes
  belongs_to :diary
  belongs_to :diary

  has_many :liked_users, through: :likes, source: :user
end
