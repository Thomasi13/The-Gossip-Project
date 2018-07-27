class Like < ApplicationRecord
   has_many :users ,through: :gozips
end 
