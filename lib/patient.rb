class Patient
  # attr_accessor :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.collect do |appointment|
      binding.pry
      if self == appointment.patient
     end
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

end
