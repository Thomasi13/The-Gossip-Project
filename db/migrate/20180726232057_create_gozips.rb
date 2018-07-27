class CreateGozips < ActiveRecord::Migration[5.2]
  def change
    create_table :gozips do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
