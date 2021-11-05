class MyLink < ApplicationRecord
  has_many :link_groups, dependent: :destroy
  

  validates :title, presence: true
  validates :description, presence: true
  
  enum status: { "非公開": 0, "公開": 1 }

end
