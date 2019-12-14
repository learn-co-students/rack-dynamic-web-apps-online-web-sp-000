class Application

  def call(env)
    resp = Rack::Response.new
    num_1 = Kernel.rand(1..3)
    num_2 = Kernel.rand(1..3)
    num_3 = Kernel.rand(1..3)
    resp.write "Number 1 is #{num_1}\n"
    resp.write "Number 2 is #{num_2}\n"
    resp.write "Number 3 is #{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
