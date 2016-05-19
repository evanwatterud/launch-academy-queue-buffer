require_relative 'lib/queue'

buffer = Launch::Queue.new
File.open('balls.txt', 'r') do |file|
  file.each_char do |char|
    buffer.enter(char)
  end
end

def char_count(buffer)
  chars = {}

  while !buffer.empty?
    unless chars[buffer.peek]
      chars[buffer.peek] = 0
    end
    chars[buffer.peek] += 1
    buffer.leave
  end

  return chars
end

puts char_count(buffer)
