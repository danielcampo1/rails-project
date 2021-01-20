class AddColumnsToDestinationsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :destinations, :excursion, :string
    add_column :destinations, :time_of_visit, :string
    add_column :destinations, :best_moment, :string
  end
end
