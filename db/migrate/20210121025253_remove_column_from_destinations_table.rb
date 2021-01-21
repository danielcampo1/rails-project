class RemoveColumnFromDestinationsTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :destinations, :name
  end
end
