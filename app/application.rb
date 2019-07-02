class Application

  def call(env)
    resp = Rack::Response.new
    
    resp.write "#{num_1 = Kernel.rand(1..20)}\n"
    resp.write "#{num_2 = Kernel.rand(1..20)}\n"
    resp.write "#{num_3 = Kernel.rand(1..20)}\n"

    resp.write (num_1 == num_2 && num_2 == num_3) ? "You Win" : "You Lose" 

    resp.finish
  end

end
