=begin
2.	Create a program to print the sequence
3 x 1 = 3
3 x 2 = 6
3 x 20 = 60
=end


(1..20).each do |a|
  $m = 5
  $mult= a *$m
    puts "#$m x #{a} = #$mult"
end


