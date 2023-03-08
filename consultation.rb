class Consultation
  def initialize(attr = {})
    @id = attr['id']
    @date = attr['date']
    @patient = attr['patient']
    @doctor = attr['doctor']
  end
end