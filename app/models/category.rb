class Category < ApplicationRecord
  has_many :keywords
  #added due to edit the categories
  has_many :user_categories
  has_many :users, through: :user_categories
end
