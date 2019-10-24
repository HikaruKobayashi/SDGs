class CreateReducedInequeaties < ActiveRecord::Migration[5.2]
  def change
    create_table :reduced_inequeaties do |t|

      t.timestamps
    end
  end
end
