class Employee
    attr_reader :name, :title, :salary, :boss
    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end

    def boss=(boss) 
        return boss if boss == nil

        self.boss = boss 

        if self.boss
            self.boss._children.delete(self)
          end
    end

    def bonus(multiplier)
       (salary) * multiplier 
    end
end