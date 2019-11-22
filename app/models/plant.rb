class Plant < ApplicationRecord
  belongs_to :garden

  has_many :taggings
  has_many :tags, through: :taggings
end
