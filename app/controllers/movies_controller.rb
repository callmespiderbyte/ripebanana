class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @time = Time.now
    @movies = Movie.order(params[:sort] + ' ' + params[:direction])
  end

  private
    def sort_column
      Movie.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[desc asc].include?(params[:direction]) ?  params[:direction] : "desc"
    end

  def show
  end

  def new
  end

  def create
    # ...
  end
end
