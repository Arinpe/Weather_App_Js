class AddUniquenessConstraintToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_index :appointments, [:user_id, :car_id]
  end
end
