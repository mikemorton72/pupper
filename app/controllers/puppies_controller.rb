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
      render json: {errors: puppy.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    puppy = Puppy.find_by(id: params[:id])
    puppy.name = params[:name] || puppy.name
    puppy.age = params[:age] || puppy.age
    puppy.breed = params[:breed] || puppy.breed
    if puppy.save
      render json: puppy.as_json
    else
      render json: {errors: puppy.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    puppy = Puppy.find_by(id: params[:id])
    if puppy.destroy
      render json: {message: "#{puppy.name} was destroyed"}
    else
      render json: {message: "puppy not found"}
    end
  end

end
