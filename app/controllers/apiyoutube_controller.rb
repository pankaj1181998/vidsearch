require 'rubygems'
require 'pry'
require 'fileutils'
require 'json'
require 'net/http'
require "erb"
class ApiyoutubeController < ApplicationController

	  

    def search
			  
    end

 	def ldetails
 	 	@title = 1
 	 	@desc = 222

 	 	@link = params[:chk_link]
		uri = URI("https://www.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails&id="+@link+"&key=AIzaSyBOaeBxhyOrUz4zt2euYSTiMVoM9sSE4QI")
		Net::HTTP.get(uri) # => String
		@res = JSON.parse(Net::HTTP.get(uri))
		
		if !@res["items"].empty?
			@user = Mydb.new
			@user.title = @res["items"][0]["snippet"]["title"]
			@user.image = @res["items"][0]["snippet"]["thumbnails"]["default"]["url"]
			@user.vid_link = "https://www.youtube.com/watch?v="+@link
			@user.save
		else
			
		end	
		respond_to do |format|

        format.html { } # index.html.erb
        format.json { render json: @res  }
        format.js
	   		end
	  

	end	

end

