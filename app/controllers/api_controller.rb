class ApiController < ApplicationController
  def bitcoin
      require 'net/http'
      
      uri = "http://133.18.22.70/in.php"

      uri = URI.parse(uri)
      req = Net::HTTP::Get.new(uri)
      res = Net::HTTP.start(uri.host, uri.port){|http|
          http.request(req)
      }
      @k=JSON.parse(res.body)
      
      
      render :json => @k
  end
end
