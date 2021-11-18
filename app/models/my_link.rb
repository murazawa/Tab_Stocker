class MyLink < ApplicationRecord
  has_many :link_groups, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :user


  validates :title, presence: true
  validates :description, presence: true

  enum status: { release: 0, staging: 1 }
  
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end
