class GamesController < ApplicationController

  # POST /games
  def create
    @user_move = game_params
    puts @user_move
    @server_move = MoveCreator.new.get_move
    unless @server_move
      @server_move = %w(rock paper scissors).sample
    end
    puts @server_move
    if @user_move == @server_move
      @result = "tie"
    elsif (@user_move == 'rock' &&  @server_move == 'scissors') || (@user_move == 'paper' &&  @server_move == 'rock') || (@user_move == 'scissors' &&  @server_move == 'paper')
      @result = "win"
    else
      @result = "lose"
    end
    render json: {result: @result, server_move: @server_move}, status: :created
  end

  private
    # Only allow a list of trusted parameters through.
  def game_params
    params.require(:user_move)
  end
end