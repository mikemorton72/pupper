class PuppiesController < ApplicationController
  def index
    render json: Puppy.all.as_json
  end
  def show
    render json: Puppy.find_by(id: params[:id]).as_json
  end
end
