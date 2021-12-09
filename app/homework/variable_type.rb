class Person
    $global = 'This is a global variable'
    
    def initialize(name)
        @name = name
    end

    def class_variable
        @@class = 'This is a class variable'
    end

    def print_class
        puts @@class
    end

    def print_name
        puts @name
    end

    def print_local
        _local = 'This a local variable'
        puts _local
    end
end

class School
    def initialize(name)
        @name = name
    end

    def print_global
        puts $global
    end
end


school1 = School.new('CQ')

school1.print_global

p1 = Person.new('Oky')
p2 = Person.new('Dani')

p1.class_variable
p2.print_class
p1.print_name
p2.print_name
p1.print_local