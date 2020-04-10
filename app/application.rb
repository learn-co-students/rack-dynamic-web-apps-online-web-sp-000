class Application

  def call(env)
    resp = Rack::Response.new

    n1 = Kernel.rand(1..20)
    n2 = Kernel.rand(1..20)
    n3 = Kernel.rand(1..20)

    if n1 == n2 and n2 == n3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
