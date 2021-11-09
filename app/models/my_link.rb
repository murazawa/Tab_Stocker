class MyLink < ApplicationRecord
  has_many :link_groups, dependent: :destroy
  belongs_to :user
  

  validates :title, presence: true
  validates :description, presence: true

  enum status: { "公開": 0, "非公開": 1 }

end
