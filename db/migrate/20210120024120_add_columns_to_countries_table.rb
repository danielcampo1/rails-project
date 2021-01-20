class AddColumnsToCountriesTable < ActiveRecord::Migration[6.0]
  def change
    add_column :countries, :description, :string 
    add_column :countries, :culture ,:string
    add_column :countries, :climate, :string
  end
end
