class Response < ApplicationRecord
  has_and_belongs_to_many :article
  has_and_belongs_to_many :user
end
