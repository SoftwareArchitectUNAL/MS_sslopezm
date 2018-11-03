class IntrafamiliesController < ApplicationController
  before_action :set_intrafamily, only: [:show, :update, :destroy]

  # GET /intrafamilies
  def index
    @intrafamilies = Intrafamily.all

    render json: @intrafamilies
  end

  # GET /intrafamilies/1
  def show
    render json: @intrafamily
  end

  # POST /intrafamilies
  def create
    @intrafamily = Intrafamily.new(intrafamily_params)

    if @intrafamily.save
      render json: @intrafamily, status: :created, location: @intrafamily
    else
      render json: @intrafamily.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /intrafamilies/1
  def update
    @intrafamily = Intrafamily.find(params[:id])

    if @intrafamily.update(intrafamily_params)
      render json: @intrafamily
    else
      render json: @intrafamily.errors, status: :unprocessable_entity
    end
  end

  # DELETE /intrafamilies/1
  def destroy
    @intrafamily.destroy
  end

  private

    def set_intrafamily
      @intrafamily = Intrafamily.find(params[:id])
    end

    def intrafamily_params
      params.permit(:locality, :victim, :aggressor, :criminal_complaint)
    end
end
