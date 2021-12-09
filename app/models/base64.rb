class Base64

    ALPHABET = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
        a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9
        + /].freeze
    

    def initialize(s)
        @string = s
        print_v(@string)
    end

    def print_v(variable)
        puts "#{variable}"
    end

    def s_char
        @chars = @string.chars 
        print_v(@chars)
    end

    def asc
        @ascii = []
        @chars.each do |c|
            @ascii.push(c.ord)
        end
        print_v(@ascii)
    end

    def binary
        @bin = []
        @ascii.each do |a|
            b = "%b" % a
            if b.length < 8
                until b.length == 8
                    b= sprintf '%08d', b
                end
            end
            @bin.push(b)
        end
        print_v(@bin)
    end

    def conc
        @six = ""
        @bin.each do |b|
            @six.concat(b)
        end
        print_v(@six)
    end

    def six_carac
        @cont = @six.scan(/.{1,6}/)

        @cont.each do |c|
            if c.length < 6
                until c.length == 6
                    c.concat("0")
                end
            end
        end
        print_v(@cont)
    end

    def decs
        @dec = []
        @cont.each do |c|
            @dec.push(c.to_i(2))
        end
        print_v(@dec)
    end

    def base64
        @base64 = @dec.map { |x| ALPHABET[x] }
        @sin_i = @base64.join('')
        print_v(@sin_i)
    end

    def add
        puts @sin_i.length
        largo = @sin_i.length % 4
        puts largo
        if largo != 0
            @sin_i.concat("=")
        end
        puts @sin_i.length
        print_v(@sin_i)
    end

end

    b = Base64.new("Hola Mundo")
    puts "caracteres separados \n"
    b.s_char
    puts "Tabla ascii \n"
    b.asc
    puts "convertidos a binario \n"
    b.binary
    puts "binario concatenado\n"
    b.conc
    puts "separado por 6 caracteres\n"
    b.six_carac
    puts "convertido a decimal \n"
    b.decs
    puts "convertido a base64 #{@sin_i} sin '=' \n"
    b.base64
    puts "convertido a base64 #{@sin_i} con '=' \n"
    b.add
    
