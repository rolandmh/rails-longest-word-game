class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10).join(' ')
  end

  def score
    letters = params[:letters]
    # render plain: "Your longest word: '#{params[:word]}'"
    if letters == params[:word]
      @response = "Sorry but TEST can't be built out of #{params[:word].split.join(', ')}"
    else
      @response = "Wrong"
    end
  end
end
