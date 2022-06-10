class CreateTemperatureStates < ActiveRecord::Migration[6.1]
  def change
    create_table :temperature_states do |t|
      t.string :label, null: false
      t.float :temperature, null: false
      t.timestamps
    end
  end
end
