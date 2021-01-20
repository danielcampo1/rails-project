class ChangeTravelDestinationsToCountries < ActiveRecord::Migration[6.0]
  def change
    rename_table :travel_destinations, :countries
  end
end
