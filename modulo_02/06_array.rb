item = [[1,2,3,4], [2,35,6,7], [23,4,32,32]]
item.each do |externo|
    externo.each do |interno| 
        puts interno
    end
end

v = [1, 3, 5, 6, 9]

v.each do |item|
    puts item
end

v1 = [] #Array.new
v1.push('Ryan') 
v1.push(21)

v1.each do |item|
    puts item
end

s = 'Ryan'
puts s[0] #Trata String como Vetor