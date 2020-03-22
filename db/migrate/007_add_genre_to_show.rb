class AddGenreToShow < ActiveRecord::Migration[5.1]
    add_column :shows, :genre, :string
end