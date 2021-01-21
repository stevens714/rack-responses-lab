# class Application

#     def call(env)
#         resp = Rack::Response.new
        
#         time1 = Time.now.to_i % 86400
        

#       if time1 > 43200
#         resp.write "Good Morning"
#       elsif time1 >= 43200
#         resp.write "Good Afternoon"
#       else
#         resp.write "bruh, your clock is broken..."
#       end
#       resp.finish
#     end
  
#   end


class Application

    def call(env)
      resp = Rack::Response.new
  
      time = Time.now.hour
  
      if time <= 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end