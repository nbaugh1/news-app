class Source < ApplicationRecord
  has_many :articles
  belongs_to :category
end
