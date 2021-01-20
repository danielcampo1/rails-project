class ChangeLocationsToDestination < ActiveRecord::Migration[6.0]
  def change
    rename_table :locations, :destinations
  end
end
