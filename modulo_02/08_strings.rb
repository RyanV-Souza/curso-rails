x = "Ryan"
y = 'Rails'

puts x
puts x.class
puts y
puts y.class

a = "Curso "
b = "Rails"

puts a + b
puts a << b
puts "==================================="

x = "curso"
puts x.object_id
x += "Rails"
puts x
puts x.object_id
puts "==================================="
q = "Curso de "
puts q.object_id
q << "Rails"
puts q
puts q.object_id

h = "Ryan #{1 +1 } #{q}"
puts h