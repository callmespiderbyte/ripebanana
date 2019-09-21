class MoviesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @time = Time.now
    @movies = Movie.order(sort_column + ' ' + sort_direction)
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      redirect_to new_movie_path
    end
  end

  private
    def sort_column
      Movie.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[desc asc].include?(params[:direction]) ?  params[:direction] : "desc"
    end



end
