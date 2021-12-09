# frozen_string_literal: true

# Syntax
# if conditional [then]
# code...
#   [elsif conditional [then]
# code...]...
#   [else
#      code...]
# end

x = 1
if x > 2
  puts 'x is greater than 2'
elsif (x <= 2) && (x != 0)
  puts 'x is 1'
else
  puts "I can't guess the number"
end

# code if condition
# Executes code if the conditional is true.

debug = 1
print 'debug' if debug

# Ruby unless Statement

=begin
unless conditional [then]
code
[else
   code ]
end
=end

# Executes code if conditional is false. If the conditional is true, code specified in the else clause is executed.

x = 1
unless x>=2
  puts 'x is less than 2'
else
  puts 'x is greater than 2'
end

# Ruby unless modifier
# code unless conditional

var =  1
print '1 -- Value is set' if var
print '2 -- Value is set' unless var

var = false
print '3 -- Value is set' unless var

# Ruby case Statement
# Syntax
=begin
case expression
[when expression [, expression ...] [then]
code ]...
  [else
code ]
end
=end

=begin
Compares the expression specified by case and that specified by when using the === operator and executes the code of the when clause that matches.
The expression specified by the when clause is evaluated as the left operand. If no when clauses match, case executes the code of the else clause.
A when statement's expression is separated from code by the reserved word then, a newline, or a semicolon.
=end

letter = 'a'
case letter
when 'a'
  puts 'a'
when 'b'
  puts 'b'
else
  puts 'c'
end


age =  5
case age
when 0..2
  puts 'baby'
when 3..6
  puts 'little child'
when 7..12
  puts 'child'
when 13..18
  puts 'youth'
else
  puts 'adult'
end