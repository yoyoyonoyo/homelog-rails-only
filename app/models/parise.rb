class Parise < ApplicationRecord
  has_many :likes
  belongs_to :diary
end
