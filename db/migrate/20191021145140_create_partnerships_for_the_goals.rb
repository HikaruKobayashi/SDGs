class CreatePartnershipsForTheGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :partnerships_for_the_goals do |t|

      t.timestamps
    end
  end
end
