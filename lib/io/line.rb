# frozen_string_literal: true

class IO::Line
  require "io/console"
  require_relative "line/multiple"

  VERSION = "0.1.0"
  attr_reader :io

  def initialize(io)
    @io = io
  end

  def print(*strs)
    tap { @io.print(strs.join.gsub($/, "")) }
  end

  def end
    tap { @io.print($/) }
  end

  def rewind
    tap do
      @io.erase_line(2)
      @io.goto_column(0)
    end
  end
end
