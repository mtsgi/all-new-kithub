class CreateApps < ActiveRecord::Migration[5.1]
  def change
    create_table :apps do |t|
      t.string :name
      t.integer :user_id
      t.string :appid
      t.string :desc
      t.string :genre
      t.string :url

      t.timestamps
    end
  end
end
