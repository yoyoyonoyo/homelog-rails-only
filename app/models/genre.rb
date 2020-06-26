class Genre < ApplicationRecord
  belongs_to :diary
  belongs_to :user
end
