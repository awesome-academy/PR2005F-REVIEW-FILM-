class CreateFilmGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :film_genres do |t|
      t.string :film_id, foreign_key: true
      t.string :genres_id, foreign_key: true
      

      t.timestamps
    end
  end
end
