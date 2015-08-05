class DirectorsController < ApplicationController

    def director
    @list_of_directors = Director.all
  end

  def show_director
   @director = Director.find(params["id"])
   render("show_director.html.erb")
 end

  def destroy_director

  @director = Director.find(params["id"])
  @director.destroy

  redirect_to("/directors")
end

def new_director
  render("new_director.html.erb")
end

def create_director

  d = Director.new
  d.image_url = params["image_url"]
  d.name = params["name"]
  d.dob = params["dob"]
  d.bio = params["bio"]
  d.save

  redirect_to("/directors")
end

def edit_director
  @director = Director.find(params["id"])
  render("edit_director.html.erb")
end

def update_director
  d = Director.find(params["id"])
  d.image_url = params["image_url"]
  d.name = params["name"]
  d.dob = params["dob"]
  d.bio = params["bio"]
  d.save

  redirect_to("/directors")
end

end
