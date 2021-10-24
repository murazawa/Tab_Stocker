class MyLink < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :url_title, presence: true
end
