require 'sqlite3'
require_relative 'patient'
require_relative 'doctor'
require_relative 'consultation'

DB = SQLite3::Database.new('hospital.sqlite')

class Hospital
    def initialize; end

    def all_patients
      query = "SELECT * FROM patients"
      DB.results_as_hash = true # Retornamos cada registro formatado em uma hash
      results = DB.execute(query)
      results.map { |hash| Patient.new(hash) } # Deserializando os dados obtidos do DB
    end

    def all_doctors
      query = "SELECT * FROM doctors"
      DB.results_as_hash = true
      results = DB.execute(query)
      results.map { |hash| Doctor.new(hash) }
    end

    def all_consultations_by_doctor_id(id)
      query = "SELECT
      p.id AS patient_id,
      d.id AS doctor_id,
      c.id AS id,
      c.date AS date 
      FROM consultations c
      JOIN patients p ON p.id = c.patient_id
      JOIN doctors d ON d.id = c.doctor_id
      WHERE d.id = #{id}"
      DB.results_as_hash = true
      consultations = DB.execute(query)
      consultations.map do |consultation|
        patient_params = DB.execute("SELECT * FROM patients WHERE id = #{consultation['patient_id']}").first
        consultation['patient'] = Patient.new(patient_params)
        doctor_params = DB.execute("SELECT * FROM doctors WHERE id = #{consultation['doctor_id']}").first
        consultation['doctor'] = Doctor.new(doctor_params)
        Consultation.new(consultation)
      end
    end
end

hospital = Hospital.new
p hospital.all_patients
p hospital.all_consultations_by_doctor_id(2) # Returns a empty Array!
p hospital.all_consultations_by_doctor_id(1) # Returns a Array with 3 hashes inside