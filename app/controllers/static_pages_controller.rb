class StaticPagesController < ApplicationController

	def home
    response = HTTParty.get('https://api.instagram.com/v1/tags/allyqwedding/media/recent?&access_token=182837634.5955ee4.23903dd923b445a79639d405ea6729d6')
    @tags = JSON.parse(response.body)["data"]
	end
  
  def instagram
  	max_id = params[:max_tag_id].present? ? '&max_tag_id=' + params[:max_tag_id] : ''
    response = HTTParty.get('https://api.instagram.com/v1/tags/allyqwedding/media/recent?&access_token=182837634.5955ee4.23903dd923b445a79639d405ea6729d6' + max_id)
    @tags = JSON.parse(response.body)["data"]
    @next_max_id = JSON.parse(response.body)["pagination"]["next_max_id"]
    puts "testing pagination"
  end
	
end
