class CreateLifeBelowWaters < ActiveRecord::Migration[5.2]
  def change
    create_table :life_below_waters do |t|

      t.timestamps
    end
  end
end
