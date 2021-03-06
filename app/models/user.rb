class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #ユーザ一人につき、ダイアリーもひとつ。
  has_many :diaries, dependent: :destroy
  has_many :genres, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :parises, dependent: :destroy
  has_many :liked_parises, through: :likes, source: :parise

  def already_liked?(parise)
    self.likes.exists?(parise_id: parise.id)
  end

end
