class GamesController < ApplicationController
  def new
    letter = ('a'..'z').to_a
    @game_letters = []
    10.times do
      @game_letters << letter.sample
    end
  end

  def score
    @checker = params[:game_letters].split
    @word = (params[:word] || "").upcase
  end
end
