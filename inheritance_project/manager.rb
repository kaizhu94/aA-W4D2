require_relative "./employee.rb"
class Manager < Employee
    attr_reader :employees
    def initialize(name, title, salary, boss = nil) #refactor similar to poly parent/child relationship
        super(name, title, salary, boss)
        @employees = []
    end

    def add_employee(employee)
        employees << employee
        employee
      end

    def bonus(multipiler) 
        self.sum_salary * multipiler
    end

    protected

    def sum_salary
        sum = 0
        self.employees.each do |employee|
            if employee.is_a?(Manager)
              sum += employee.salary + employee.sum_salary
            else
              sum += employee.salary
            end
        end
        sum
    end

end
Ned = Manager.new("Ned", "Founder", 1000000,) 
Darren = Manager.new("Darren", "TA_Manager", 78000, Ned)#only include boss array of single boss
Shawna = Employee.new("Shawna", "TA", 12000, Darren)
David = Employee.new("David", "TA", 10000, Darren)


p Ned.bonus(5) # => 500_000
p Darren.bonus(4) # => 88_000
p David.bonus(3) # => 30_000