class IntrafamiliesController < ApplicationController
  before_action :set_intrafamily, only: [:show, :update, :destroy]

  # GET /intrafamilies
  # GET /intrafamilies.json
  def index
    @intrafamilies = Intrafamily.all

    render json: @intrafamilies
  end

  # GET /intrafamilies/1
  # GET /intrafamilies/1.json
  def show
    render json: @intrafamily
  end

  # POST /intrafamilies
  # POST /intrafamilies.json
  def create
    @intrafamily = Intrafamily.new(intrafamily_params)

    if @intrafamily.save
      render json: @intrafamily, status: :created, location: @intrafamily
    else
      render json: @intrafamily.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /intrafamilies/1
  # PATCH/PUT /intrafamilies/1.json
  def update
    @intrafamily = Intrafamily.find(params[:id])

    if @intrafamily.update(intrafamily_params)
      head :no_content
    else
      render json: @intrafamily.errors, status: :unprocessable_entity
    end
  end

  # DELETE /intrafamilies/1
  # DELETE /intrafamilies/1.json
  def destroy
    @intrafamily.destroy

    head :no_content
  end

  private

    def set_intrafamily
      @intrafamily = Intrafamily.find(params[:id])
    end

    def intrafamily_params
      params.require(:intrafamily).permit(:neighborhood, :victim, :aggressor, :criminal_complaint)
    end
end
