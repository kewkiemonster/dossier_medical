class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birthdate
      t.string :contact
      t.string :address
      t.string :injury
      t.string :infection
      t.string :specialobservation
      t.date :appointment
      t.time :time

      t.timestamps
    end
  end
end
