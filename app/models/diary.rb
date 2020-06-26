class Diary < ApplicationRecord
  has_one :parise, dependent: :destroy
  has_one :genre, dependent: :destroy
  belongs_to :user
end
