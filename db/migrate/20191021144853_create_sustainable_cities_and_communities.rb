class CreateSustainableCitiesAndCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :sustainable_cities_and_communities do |t|

      t.timestamps
    end
  end
end
