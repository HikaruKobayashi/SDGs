class CreateResponsibleConsumptionAndProductions < ActiveRecord::Migration[5.2]
  def change
    create_table :responsible_consumption_and_productions do |t|

      t.timestamps
    end
  end
end
