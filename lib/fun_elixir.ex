defmodule Foo do 
  use Application

  def start(_type, _args) do
    IO.puts "started"
    Task.start(fn -> 
      result = Foo.return_true
      IO.puts result

      IO.puts Foo.return_false

      IO.puts "done"
    end)
  end

  def return_false do
    false
  end

  def return_true, do: true

end


