class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end

  def show 
    bird = Bird.find_by(id: params[:id])
    render json: {id: bird.id, name: bird.name, species: bird.species }
    # we are allowing only specific attributes of a bird instance to be shown.
    # we create a hash using three keys and assign the keys manually with the attributes of bird. 
    # you can also use .slice(:id, :name, :species) to do the same thing
    # you can also use only: [] or except: []
  end
end