class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    self.active == true ? "This student is currently active." : "This student is currently inactive."
  end

  def switch
    self.active == true ? self.active = false : self.active = true
  end
end
