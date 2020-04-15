class Application

  def call(env)
    resp = Rack::Response.new
  
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
    
    resp.write "Num 1: #{num_1}\n"
    resp.write "Num 2: #{num_2}\n"
    resp.write "Num 3: #{num_3}\n\n"
   
    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    
     resp.finish
  end
end
