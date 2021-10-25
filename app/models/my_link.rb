class MyLink < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  
  enum status: { "非公開": 0, "公開": 1 }

end
