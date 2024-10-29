puts 'Hello, World!'
#Trying out staf
#wlc = `whoami`
#puts "#{wlc}"
puts "Hello #{ARGV[0]}. What is your favorite coding language?"

answer = gets.chomp
answer = answer.upcase
case answer
when 'C++'
  puts 'Oh, that is cool!'
when 'JAVA'
  puts 'That is casual'
when 'RUBY'
  puts 'Hey! You are trying to please me!'
else
  puts 'I dont know this one('
end

puts 'Enter ruby command:'

command = gets.chomp
print eval command

puts 'Enter OS command:'
command = gets.chomp
puts `#{command}`