class Application #changes

  def call(env)
    resp = Rack::Response.new
    resp.write "Hello, World"
    resp.finish
  end

end
