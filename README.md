## About

io-line.rb is an IO library that can reuse one or more lines of output. <br>
The implementation uses the
[io-console](https://www.rubydoc.info/gems/io-console)
library from Ruby's stdlib.

## Examples

### One line

The following example counts from 1 up to 100. The number from the previous
iteration is replaced with a number from the current iteration, and the same
line is reused until the iteration is completed. It is possible to end the
current line, and move onto the next line with the `IO::Line#end` method.

 ```ruby
require "io/line"
line = IO::Line.new($stdout)
1.upto(100) do |number|
  line.rewind.print(number)
  sleep 0.1
end
line.end
```

## Sources

* [Source code (github)](https://github.com/0x1eef/io-line.rb)
* [Source code (gitlab)](https://gitlab.com/0x1eef/io-line.rb)

## Install

io-line.rb is distributed as a RubyGem through its git repositories. <br>
[GitHub](https://github.com/0x1eef/io-line.rb),
and
[GitLab](https://gitlab.com/0x1eef/io-line.rb)
are available as sources.

## License

BSD0L.
