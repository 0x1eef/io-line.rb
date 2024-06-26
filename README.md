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
current line, and move onto the next line with the `IO::Line#end` method:

 ```ruby
require "io/line"
line = IO::Line.new($stdout)
1.upto(100) do |number|
  line.rewind.print(number)
  sleep 0.1
end
line.end
```

## Documentation

A complete API reference is available at
[0x1eef.github.io/x/io-line.rb](https://0x1eef.github.io/x/io-line.rb)

## Install

io-line.rb can be installed via rubygems.org:

    gem install io-line.rb

## Sources

* [GitHub](https://github.com/0x1eef/io-line.rb)
* [GitLab](https://gitlab.com/0x1eef/io-line.rb)

## License

[BSD Zero Clause](https://choosealicense.com/licenses/0bsd/)
<br>
See [LICENSE](./LICENSE)
