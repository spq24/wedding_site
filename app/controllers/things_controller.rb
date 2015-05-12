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


  private
  
  def thing_params
      params.require(:thing).permit(:image, :video, :name, :email)
  end
end
