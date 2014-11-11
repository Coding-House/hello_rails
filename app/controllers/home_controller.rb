class HomeController < ApplicationController

  def index
    @current_time = CurrentTime.output
  end

end
