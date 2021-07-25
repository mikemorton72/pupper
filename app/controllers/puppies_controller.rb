class PuppiesController < ApplicationController
  def index
    render json: Puppy.all.as_json
  end
  def show
    render json: Puppy.find_by(id: params[:id]).as_json
  end
  def create
    puppy = Puppy.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed]
    )
    if puppy.save
      render json: puppy.as_json
    else
      render json: {errors: puppy.errors.full_messages}
    end
  end
end
