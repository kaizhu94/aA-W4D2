class Employee
    attr_reader :name, :title, :salary
    attr_reader :boss
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        self.boss = boss
    end

    def boss=(boss) 
        boss = boss
        boss.add_employee(self) unless boss.nil?
        boss
    end

    def bonus(multiplier)
       self.salary * multiplier 
    end
end