class CreateGenderEqualities < ActiveRecord::Migration[5.2]
  def change
    create_table :gender_equalities do |t|

      t.timestamps
    end
  end
end
