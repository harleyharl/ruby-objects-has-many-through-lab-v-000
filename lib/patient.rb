class Patient
  # attr_accessor :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |appointment|
      self == appointment.patient
     end
  end

  def doctors
    binding.pry
    # self.appointments.select do |doctor|
    #   self == appointment.doctor
    # end 
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

end
