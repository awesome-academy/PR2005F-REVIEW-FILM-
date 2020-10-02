class CreatePeopleFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :people_films do |t|
      t.string :people_id, foreign_key: true
      t.string :film_id, foreign_key: true

      t.timestamps
    end
  end
end
