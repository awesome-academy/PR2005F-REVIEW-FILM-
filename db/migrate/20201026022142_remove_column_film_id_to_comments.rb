class RemoveColumnFilmIdToComments < ActiveRecord::Migration[6.0]
  def change
  	remove_column :comments, :film_id
  end
end
