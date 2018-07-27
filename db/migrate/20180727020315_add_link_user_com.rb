class AddLinkUserCom < ActiveRecord::Migration[5.2]
  def change
  	 add_reference :gozips, :comment, foreign_key: true
  end
end
