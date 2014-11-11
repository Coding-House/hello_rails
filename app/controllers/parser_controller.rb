class ParserController < ApplicationController

  def text
    @counts = TextParser.counts(params[:body])
  end

end
