class Doctor
  def initialize(attr = {})
    @id = attr['id']
    @first_name = attr['first_name']
    @last_name = attr['last_name']
    @specialty = attr['specialty']
  end
end