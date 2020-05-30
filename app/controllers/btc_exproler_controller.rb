class BtcExprolerController < ApplicationController
  def index
      require 'net/http'
      
      uri = "http://133.18.22.70/in.php"

      uri = URI.parse(uri)
      req = Net::HTTP::Get.new(uri)
      res = Net::HTTP.start(uri.host, uri.port){|http|
          http.request(req)
      }
      @k=JSON.parse(res.body)
  end


  def show
      require 'net/http'
      
      if params[:offset]
            offset=params[:offset].to_i;
      else
            offset=10
      end
      if params[:offset].to_i<=0
          offset=10
      end
      
      uri = "http://133.18.22.70/in.php?of=#{offset}&block="+params["id"].to_s
      uri = URI.parse(uri)
      req = Net::HTTP::Get.new(uri)
      res = Net::HTTP.start(uri.host, uri.port){|http|
          http.request(req)
      }
      @k=JSON.parse(res.body)
      @pageNum=(offset.to_f/10).ceil
          
    if @k["data"]["hash"].nil?
        redirect_to "/blockchain/btc_exproler"
    end
  end
end
