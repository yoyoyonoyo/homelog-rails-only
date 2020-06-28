class Diary < ApplicationRecord
  has_one :parise, dependent: :destroy
  accepts_nested_attributes_for :parise
  has_one :genre, dependent: :destroy
  accepts_nested_attributes_for :genre

  belongs_to :user
end
