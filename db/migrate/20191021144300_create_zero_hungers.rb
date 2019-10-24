class CreateZeroHungers < ActiveRecord::Migration[5.2]
  def change
    create_table :zero_hungers do |t|

      t.timestamps
    end
  end
end
