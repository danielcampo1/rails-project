class CreateTravelDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :travel_destinations do |t|
      t.string :name

      t.timestamps
    end
  end
end
