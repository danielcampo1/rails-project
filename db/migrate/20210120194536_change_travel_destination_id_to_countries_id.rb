class ChangeTravelDestinationIdToCountriesId < ActiveRecord::Migration[6.0]
  def change
    rename_column :destinations, :travel_destination_id, :country_id
  end
end
