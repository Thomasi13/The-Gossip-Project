class Gozip < ApplicationRecord
  belongs_to :user
  #has_many :tag
  belongs_to :like
  belongs_to :comment
end
