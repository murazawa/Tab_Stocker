class MyLink < ApplicationRecord
  has_many :link_groups, dependent: :destroy
  belongs_to :user
  

  validates :title, presence: true
  validates :description, presence: true

  enum status: { release: 0, staging: 1 }

end
