class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id, foreign_key: true
      t.integer :film_id, foreign_key: true

      t.timestamps
    end
  end
end
