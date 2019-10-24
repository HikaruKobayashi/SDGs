class CreateGoodHealthAndWellBeings < ActiveRecord::Migration[5.2]
  def change
    create_table :good_health_and_well_beings do |t|

      t.timestamps
    end
  end
end
