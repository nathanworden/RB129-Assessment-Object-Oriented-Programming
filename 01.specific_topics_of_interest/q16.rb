

class Employee

  attr_reader :name, :days_vacation, :desk

  def initialize(name, serial_number)
    self.name = name
    @serial_number = serial_number
  end

  def to_s
    "Name: #{name} \n" \
    "Type: #{self.class} \n" \
    "Serial number: #{serial_number} \n" \
    "Vacation days: #{days_vacation} \n" \
    "Desk: #{desk} \n"
  end

  private
  attr_writer :name, :days_vacation, :desk
  attr_accessor :serial_number

end

module FullTime

  def take_vacation
    @days_vacation -= 1
  end
end

module Delegateable
  def delegate

  end
end


class Executive < Employee
  include FullTime
  include Delegateable

  def initialize(name, serial_number)
    super
    @full_or_part_time = 'full'
    @days_vacation = 20
    @desk = 'Corner Office'
  end
end

class Manager < Employee
  include FullTime
  include Delegateable

  def initialize(name, serial_number)
    super
    @full_or_part_time = 'full'
    @days_vacation = 14
    @desk = 'Private Office'
  end
end

class RegularEmployee < Employee
  include FullTime

  def initialize(name, serial_number)
    super
    full_or_part_time = 'full'
    @days_vacation = 10
    @desk = 'Cubicle Farm'
  end
end

class PartTimeEmployee < Employee
  def initialize(name, serial_number)
    super
    @full_or_part_time = 'part-time'
    @days_vacation = 10
    @days_vacation = 0
    @desk = 'Open Workspace'
  end
end


executive = Executive.new('Mr. Executive', 111111111)
manager = Manager.new('Dave Manager', 222222222)
regular_employee = RegularEmployee.new('Rick Regular', 333333333)
part_time = PartTimeEmployee.new('Pete Part Time', 444444444)

puts executive
puts
puts manager
puts
puts regular_employee
puts
puts part_time
puts
puts

executive.take_vacation
p executive.days_vacation







