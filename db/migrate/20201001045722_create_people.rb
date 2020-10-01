class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :name
      t.date :born
      t.integer :gender
      t.string :award
      t.integer :p_duty_id
      t.string :p_duty_type

      t.timestamps
    end
  end
end
