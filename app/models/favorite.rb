class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :my_link
end
