class Comment < ApplicationRecord
  has_many :users ,through: :gozips
end
