class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.string :name
      t.references :app, foreign_key: true
      t.string :desc
      t.binary :bin

      t.timestamps
    end
  end
end
