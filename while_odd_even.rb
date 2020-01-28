#	Create a program to display odd and even results from 0 to 30. (using ,for loop,while)

(1..30).each do |a|

  unless a%2 > 0
    puts "#{a} is a even number"
    else
    puts "#{a} is odd number"
  end
end

