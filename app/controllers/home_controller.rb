class HomeController < ApplicationController

  def index
    @current_time = CurrentTime.output
  end

  def twitter
    @tweets = HomeTwitter.tweets
  end

end
