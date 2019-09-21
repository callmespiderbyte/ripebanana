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

  # I added lines 18-20, and 29-48 as per this tutorial:
  # https://launchschool.com/books/demystifying_rails/read/create_a_record_using_a_form#creatingapost
  #
  # And I added lines 28-33 from another video, which I'm actually happy with.
  #
  # I just changed some of the words (posts > movies), which I thought was making it relevant to this project, 
  # but I think it might be complicating stuff, and breaking it :(

  def new_movie_path
      render 'movies/new'
    end

  def create
    @movie = Movie.new(params[:movie])
    if @movie.save
      redirect_to new_movie_path
    end
  end

  def create_movie_path
      insert_query = <<-SQL
        INSERT INTO Movies (name, cinematography, scriptwriting, acting, ending, pace, soundtrack, leadactorsass, calleditness, tropes)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
      SQL

      connection.execute insert_query,
        params['title'],
        params['cinematography'],
        params['scriptwriting'],
        params['acting'],
        params['ending'],
        params['pace'],
        params['soundtrack'],
        params['leadactorsass'],
        params['calleditness'],
        params['tropes'],

      redirect_to '/index'
    end

  private
    def sort_column
      Movie.column_names.include?(params[:sort]) ? params[:sort] : "name"
    end

    def sort_direction
      %w[desc asc].include?(params[:direction]) ?  params[:direction] : "desc"
    end



end
