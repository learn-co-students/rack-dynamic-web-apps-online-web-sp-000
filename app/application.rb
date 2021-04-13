class Application
 
  def call(env)
    resp = Rack::Response.new
      #connect to rack 
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
 
    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"
     #write is like puts with \n as new line

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Suck"
    end
 
    resp.finish
      #end of connection to rack 
  end
 
end