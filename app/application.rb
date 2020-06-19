#class Application

#  def call(env)
#    resp = Rack::Response.new
#    resp.write "Hello, World"
#    resp.finish
#  end
#end

#Then run it with rackup config.ru
#port=60658 shows which port we'll have access the application on in the browser
#host? localhost (IN IDE IT IS THE IP)
#Your server is running at 157.230.220.151:60658 is the full URL
#=>Hello, World on page

class Application

  def call(env)
    resp = Rack::Response.new
#Kernel = a module that holds many of Rubys most useful parts, using it to generate random numbers 
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    if num_1==num_2 && num_2==num_3
      resp.write "You Win" #puts statement
    else
      resp.write "You Lose" #puts statement
    end

    resp.finish
  end

end

#write method can be called many times to build up the full response.
#The response isn't sent back to the user until #finish is called.
