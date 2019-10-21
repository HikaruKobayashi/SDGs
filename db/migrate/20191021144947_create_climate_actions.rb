class CreateClimateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :climate_actions do |t|

      t.timestamps
    end
  end
end
