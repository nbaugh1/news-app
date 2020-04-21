class Category < ApplicationRecord
  has_many :srouces
  belongs_to :user
end
