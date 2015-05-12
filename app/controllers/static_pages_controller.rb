class StaticPagesController < ApplicationController

	def home
    response = HTTParty.get('https://api.instagram.com/v1/tags/allyqwedding/media/recent?&access_token=182837634.5955ee4.23903dd923b445a79639d405ea6729d6')
    @tags = JSON.parse(response.body)["data"]
	end
  
  def instagram
    response = HTTParty.get('https://api.instagram.com/v1/tags/allyqwedding/media/recent?&access_token=182837634.5955ee4.23903dd923b445a79639d405ea6729d6')
    @tags = JSON.parse(response.body)["data"]
  end
	
end
