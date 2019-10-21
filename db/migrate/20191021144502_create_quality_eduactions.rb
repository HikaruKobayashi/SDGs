class CreateQualityEduactions < ActiveRecord::Migration[5.2]
  def change
    create_table :quality_eduactions do |t|

      t.timestamps
    end
  end
end
