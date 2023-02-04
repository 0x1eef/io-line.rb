require "io/line"
line = IO::Line.new($stdout)
1.upto(100) do |number|
  line.rewind.print(number)
  sleep 0.1
end
line.end
