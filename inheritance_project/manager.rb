require_relative "./employee.rb"
class Manager < Employee
    # include Employee
    attr_reader :employees
    def initialize(name, title, salary, boss = nil, employees)
        super(name, title, salary, boss)
        @employees = employees
    end

    def bonus(multipiler)
        sum = 0
        employees.each do |emp|
            sum += emp.salary
        end
        sum * multipiler
    end

end

Shawna = Employee.new("Shawna", "TA", 12000, "Darren")
David = Employee.new("David", "TA", 10000, "Darren")
Darren = Manager.new("Darren", "TA_Manager", 78000, "Ned",[Shawna, David])
Ned = Manager.new("Ned", "Founder", 1000000,[Darren, Shawna, David])

p Ned.bonus(5) # => 500_000
p Darren.bonus(4) # => 88_000
p David.bonus(3) # => 30_000