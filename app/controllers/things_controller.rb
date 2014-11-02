class ThingsController < ApplicationController
  before_action :set_thing, only: [:show, :edit, :update, :destroy]

  def index
    @things = Thing.all
  end

  def show
  end

  def new
    @thing = Thing.new
  end

  def edit
  end

  def create
    @thing = Thing.create!(thing_params)
    respond_to do |format|
      format.html {redirect_to things_url}
      format.js
    end
  end

  def update
    @thing.update(thing_params)
    respond_to do |format|
      format.html {redirect_to things_url}
      format.js
    end
  end

  def destroy
    @thing.destroy
    respond_to do |format|
      format.html { redirect_to things_url }
      format.js
    end
  end

  private

  def set_thing
    @thing = Thing.find(params[:id])
  end

  def thing_params
    params.require(:thing).permit(:something, :somewhat, :and_yet, :whatever, :and_a_number)
  end
end
