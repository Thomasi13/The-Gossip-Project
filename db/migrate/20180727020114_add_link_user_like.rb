class AddLinkUserLike < ActiveRecord::Migration[5.2]
  def change
  	add_reference :gozips, :like, foreign_key: true
  end
end
