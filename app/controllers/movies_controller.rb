class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def movie
    @list_of_movies = Movie.all
  end

  def show_movie
   @movie = Movie.find(params["id"])
   render("show_movie.html.erb")
 end

 def destroy_movie

  @movie = Movie.find(params["id"])
  @movie.destroy

  redirect_to("/movies")
end

def new_movie
  render("new_movie.html.erb")
end

def create_movie

  d = Movie.new
  d.image_url = params["image_url"]
  d.title = params["title"]
  d.year = params["year"]
  d.duration = params["duration"]
  d.description = params["description"]
  d.save

  redirect_to("/movies")
end

def edit_movie
  @movie = Movie.find(params["id"])
  render("edit_movie.html.erb")
end

def update_movie

  d = Movie.find(params["id"])
  d.image_url = params["image_url"]
  d.title = params["title"]
  d.year = params["year"]
  d.duration = params["duration"]
  d.description = params["description"]
  d.save

  redirect_to("/movies")
end

end
