class GenresController < ApplicationController
  def index
    render json: { genres: Genre.all }
  end
end
