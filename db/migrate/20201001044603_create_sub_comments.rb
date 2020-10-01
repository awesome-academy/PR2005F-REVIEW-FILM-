class CreateSubComments < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_comments do |t|
      t.string :content
      t.integer :comment_id, foreign_key: true
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
