class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.date :born
      t.integer :gender
      t.string :award

      t.timestamps
    end
  end
end
