class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true, unique:false
      t.references :car, null: false, foreign_key: true, unique:false

      t.timestamps
    end
  end
end
