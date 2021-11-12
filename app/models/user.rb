class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :my_links, dependent: :destroy
  has_many :favorites, dependent: :destroy
end
