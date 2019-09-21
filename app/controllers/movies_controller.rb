class MoviesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @time = Time.now

    @movies = Movie.order(sort_column + ' ' + sort_direction)
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
