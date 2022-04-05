use Bitwise

defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
    fn param -> param + secret end
  end

  def secret_subtract(secret) do
    # Please implement the secret_subtract/1 function
    fn param -> param - secret end
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    fn param -> param * secret end
  end

  def secret_divide(secret) do
    # Please implement the secret_divide/1 function
    fn param ->  div(param, secret) end
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    fn param -> param &&& secret end
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    fn param -> bxor(param, secret) end
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
    fn param -> secret_function2.(secret_function1.(param)) end
  end
end

multiply = Secrets.secret_multiply(7)
divide = Secrets.secret_divide(3)

combined = Secrets.secret_combine(multiply, divide)

IO.puts combined.(6)
