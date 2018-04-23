json.extract! patient, :id, :name, :birthdate, :contact, :address, :injury, :infection, :specialobservation, :appointment, :time, :user_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
