=begin
A=10
B='hello'
C=10.25
D= [1,2,['a','b','c'],'helloArray', 10.15]
E = {name:'jagan', age:'29'}
puts B, "#{E}"
puts C
puts A
puts D
puts "count #{D.count 3}"
print D.size
puts D.find_index 10.15
=end

A={1 => 'one', 2=>'two', 3=> 3 }

A[4]="four"
A[5]= "five"
 puts A
# puts A[2]
# puts A.keys
puts A[3].is_a? (Fixnum)
puts A[3].to_s()
puts A[3].is_a? (String)

B="1234"
puts B

# A.each do |k,v|
#   puts "#{k}---#{v}"
#   # puts "#{k}----#{A[k]}"
# end



