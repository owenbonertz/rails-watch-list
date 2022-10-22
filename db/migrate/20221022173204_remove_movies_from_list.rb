class RemoveMoviesFromList < ActiveRecord::Migration[7.0]
  def change
    remove_reference :lists, :movie, null: false, foreign_key: true
  end
end
