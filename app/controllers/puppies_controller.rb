class PuppiesController < ApplicationController
  def index
    render json: Puppy.all.as_json
  end
end
