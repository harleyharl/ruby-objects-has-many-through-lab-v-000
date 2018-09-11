class Patient

  # attr_accessor :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    binding.pry 
    Appointment.all.collect { |appointment| self.appointment }
  end

  def new_appointment(doctor, date)
    @appointments << Appointment.new(self, doctor, date)
  end

end
