class Article < ApplicationRecord
  has_many :response
  has_many :user
  has_and_belongs_to_many :collections

end
