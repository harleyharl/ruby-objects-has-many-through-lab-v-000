class Patient

  # attr_accessor :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.collect {  |appointment|
      binding.pry
      self.appointment }
  end

  def new_appointment(doctor, date)
    @appointments << Appointment.new(self, doctor, date)
  end

end
