
class Person
    $global = 'This is a global variable'
    
    def initialize(name)
        @name = name
    end

    def print_name
        puts @name
    end
end

p1 = Person.new('Oky')
p1.print_name