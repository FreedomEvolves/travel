class WelcomeController < ApplicationController
  #before_action :set_color
  def index
  	@destinations = Destination.all
    @images = ["peru1.jpg", "peru2.jpg", "peru3.jpg", "peru4.jpg"]
    @imageshash = {"peru1.jpg" => "Machu Picchu", "peru2.jpg" => "Lima", 
      "peru3.jpg" => "Colca Valley", "peru4.jpg" => "Cordilleras Blanca"}
  end

  def show_map
    @destination = Destination.all
  end

  def about
  	# these take input from the url line in Chrome.  ?color=blue&size=13
  	@color = params[:color]
  	@size = params[:size].to_i
    @united_states = {"capital city" => "Washington, DC", 
                     "favorite city" => "Asheville, NC", 
                     "favorite state" => "Oregon", 
                     "flag colors" => ["red", "white", "blue"]}
    @message = params[:text]

  end

  def contact
    # these take input from the url line in Chrome. ?name=bill
    @name = params[:name]
    @color = params[:color]    
  end

  private
  def set_color
    #check params for new color from user
    #if there is a new color in params, set it in session
    @color = params[:color]
    if @color
      session[:color] = @color
    end

    if params[:color]
    else
      @color = session[:color]
    end
  end

end

# @color2 = session[:color] #reads from previous session
#     session[:color] = 'blue'  # set session color

# set @color to be color from params (if present)
# otherwise set @color from the session (i.e., pulls from session data in cookie)
# if params[:color]
# else
#   @color = session[:color]
# end

# Use incognito window to demo how these work.










