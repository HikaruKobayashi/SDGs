class CreateAffordableAndCleanEnergies < ActiveRecord::Migration[5.2]
  def change
    create_table :affordable_and_clean_energies do |t|

      t.timestamps
    end
  end
end
