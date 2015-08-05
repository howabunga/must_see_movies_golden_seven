class ActorsController < ApplicationController

    def actor
    @list_of_actors = Actor.all
  end

  def show_actor
   @actor = Actor.find(params["id"])
   render("show_actor.html.erb")
 end

  def destroy_actor

  @actor = Actor.find(params["id"])
  @actor.destroy

  redirect_to("/actors")
end

def new_actor
  render("new_actor.html.erb")
end

def create_actor

  d = Actor.new
  d.image_url = params["image_url"]
  d.name = params["name"]
  d.dob = params["dob"]
  d.bio = params["bio"]
  d.save

  redirect_to("/actors")
end

def edit_actor
  @actor = Actor.find(params["id"])
  render("edit_actor.html.erb")
end

def update_actor
  d = Actor.find(params["id"])
  d.image_url = params["image_url"]
  d.name = params["name"]
  d.dob = params["dob"]
  d.bio = params["bio"]
  d.save

  redirect_to("/actors")
end

end
