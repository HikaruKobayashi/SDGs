class CreateCleanWaterAndSanitations < ActiveRecord::Migration[5.2]
  def change
    create_table :clean_water_and_sanitations do |t|

      t.timestamps
    end
  end
end
