POSITIVE_ANSWERS = %w(y yes ja sure of\ course)
CONTACT_DETAILS = %q(

  Email: ilya.krasnov@gmail.com
  Phone: +49 176 313 416 16
  Blog: ilyakrasnov.com
  Github: ilyakrasnov

)

def prompt_hiring_decision
  sleep 1
  puts "\n\n-------"
  print "So, do you want to hire Ilya?: [Y, n] \n >  "

  answer = $stdin.gets.chomp

  if POSITIVE_ANSWERS.include?(answer.downcase) or answer.length == 0
    puts "Great decision! Looking forward for coming mentees. Let's talk business - get in touch: #{CONTACT_DETAILS}"
  else
    puts "So you did't like the assignment? Let's talk about it - get in touch: #{CONTACT_DETAILS} "
  end
end


