require 'rubygems'
require 'pry'
require 'fileutils'
require 'json'
require 'net/http'

class ApiyoutubeController < ApplicationController
	
	respond_to :html, :js

    def search
			  
    end

 	def ldetails
 	 	@link = params[:chk_link]
	
		uri = URI("https://www.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails&id="+@link+"&key=AIzaSyBOaeBxhyOrUz4zt2euYSTiMVoM9sSE4QI")
		Net::HTTP.get(uri) # => String
		@res = JSON.parse(Net::HTTP.get(uri))
		
	 	p res

	respond_to do |format|
    	format.js { render :file => "/path/to/save.js.erb" }
	end

	
	 # 	if !res["items"].empty?
	 # 		@resp = res
		#  	@title = res["items"][0]["snippet"]["title"]
		#  	@desc = res["items"][0]["snippet"]["description"]
	 # 		@img = res["items"][0]["snippet"]["thumbnails"]["medium"]
			
	 # 	else
	 # 		print "wrong id	"
		 	
		# end


	end	

end

