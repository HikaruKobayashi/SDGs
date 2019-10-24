class CreateLifeOnLands < ActiveRecord::Migration[5.2]
  def change
    create_table :life_on_lands do |t|

      t.timestamps
    end
  end
end
