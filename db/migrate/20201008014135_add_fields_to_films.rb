class AddFieldsToFilms < ActiveRecord::Migration[6.0]
  def change
    add_column :films, :title, :string
    add_column :films, :body, :string
  end
end
