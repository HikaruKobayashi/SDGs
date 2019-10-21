class CreateNoPoverties < ActiveRecord::Migration[5.2]
  def change
    create_table :no_poverties do |t|

      t.timestamps
    end
  end
end
