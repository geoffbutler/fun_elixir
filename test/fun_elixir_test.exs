defmodule FooTest do
  use ExUnit.Case
  doctest Foo

  test "Foo.return_false returns false" do
    import Foo
    result = return_false
    assert !result
  end

  test "Foo.return_true returns true" do
    result = Foo.return_true
    assert result
  end
end
