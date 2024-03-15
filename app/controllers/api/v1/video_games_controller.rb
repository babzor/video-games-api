class Api::V1::VideoGamesController < ApplicationController
  before_action :find_video_game, only: [:update, :destroy]

  # GET api/v1/video_games
  def index
    video_games = VideoGame.all
    render json: video_games
  end

  # POST api/v1/video_games
  def create
    video_game = VideoGame.new(video_game_params)
    if video_game.save
      render json: video_game, status: :ok
    else
      render json: video_game.errors, status: :unprocessable_entity
    end
  end

  # PATCH api/v1/video_games/1
  def update
    if @video_game.update(video_game_params)
      render json: @video_game, status: :ok
    else
      render json: @video_game.errors, status: :unprocessable_entity
    end
  end

  # DELETE api/v1/video_games/1
  def destroy
    if @video_game.destroy
      render status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  private

  def video_game_params
    params.require(:video_game).permits(:name, :release_date, :studio, :ratings, platforms: [])
  end

  def find_video_game
    @video_game = VideoGame.find(params[:id])
    unless @video_game
      render json: { error: 'Video game not found' }, status: :not_found
    end
  end
end
