class Application

  def call(env)
    resp = Rack::Response.new
    num1=Kernel.rand(1..3)
    #.rand means random 
    num2=Kernel.rand(1..3)
    num3=Kernel.rand(1..3)

    #this part below alows the numbers to be visually seen by the user
resp.write "#{num1}\n"
resp.write "#{num2}\n"
resp.write "#{num3}\n"

    if num1==num2 && num2==num3 
      resp.write "You Win"
      #resp sands for response
      #insted of puts in rack we put write
    else
    resp.write "You Lose"
    end 
    resp.finish
    end

end

