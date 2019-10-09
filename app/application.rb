class Application

  def call(env)
    resp = Rack::Response.new
    resp.finish
    
    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)
    
    if num_1 == num_2 && num_2 == num_3
      puts num_1
      puts num_2
      puts num_3
      resp.write "You Win"
    else
      puts num_1
      puts num_2
      puts num_3
      resp.write "You Lose"
    end
    
    resp.finish
  end
end

