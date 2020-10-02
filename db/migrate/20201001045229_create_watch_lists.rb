class CreateWatchLists < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_lists do |t|
      t.string :user_id, foreign_key: true
      t.string :film_id, foreign_key: true

      t.timestamps
    end
  end
end
