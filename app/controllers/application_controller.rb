class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :check_uri

  private
  def check_uri
    unless /^www/.match(request.host)
      redirect_to("#{request.protocol}www.#{request.host_with_port}",
                  :status => 301)
  	end
  end
end