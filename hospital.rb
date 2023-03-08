require 'sqlite3'
require_relative 'patient'
require_relative 'doctor'

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
      p.first_name,
      p.last_name,
      doctors.first_name AS doctor_first_name, 
      doctors.specialty, 
      c.date 
      FROM consultations c
      JOIN patients AS p ON p.id = c.patient_id
      JOIN doctors ON doctors.id = c.doctor_id
      WHERE doctors.id = #{id}"
      DB.results_as_hash = true
      consultations = DB.execute(query)
    end
end
p all_patients
p all_consultations_by_doctor_id(2) # Returns a empty Array!
p all_consultations_by_doctor_id(1) # Returns a Array with 3 hashes inside