class LinkGroup < ApplicationRecord
  belongs_to :my_link
  
  validates :url, presence: true
  validates :url_title, presence: true
end
