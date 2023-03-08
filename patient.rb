class Patient
  def initialize(attr = {})
    @id = attr['id']
    @first_name = attr['first_name']
    @last_name = attr['last_name']
    @age = attr['age']
  end
end