class ThingsController < ApplicationController

  def new
  	@thing = Thing.new
  end

  def create
    @thing = Thing.create(thing_params)
    if @thing.valid?
      flash[:success] = "Thank you for doing this! I can't wait for Amanda to see this the morning of our wedding"
      redirect_to thank_you_path
    else
      flash[:danger] = "Something went wrong :( Are you sure all fields were filled out? If you want you can email me at spq2461@gmail.com"
      render :new
    end
  end

  def thank_you
  end

  def index
  end

  def destroy
    Thing.find(params[:id]).destroy
    flash[:success] = "It's Gone Forever"
    redirect_to things_path
  end

  def images
    @images = Thing.where("image is NOT NULL and image != ''")
  end

  def videos
    @videos = Thing.where("video is NOT NULL and video != ''").page params[:page]
  end


  private
  
  def thing_params
      params.require(:thing).permit(:image, :video, :name, :email, :video_html)
  end
end
