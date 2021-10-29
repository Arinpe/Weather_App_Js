class AddDateAndCityToAppointment < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :date, :string
    add_column :appointments, :city, :string
  end
end
