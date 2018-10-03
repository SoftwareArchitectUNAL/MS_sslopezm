class StreetsController < ApplicationController
  before_action :set_street, only: [:show, :update, :destroy]

  # GET /streets
  # GET /streets.json
  def index
    @streets = Street.all

    render json: @streets
  end

  # GET /streets/1
  # GET /streets/1.json
  def show
    render json: @street
  end

  # POST /streets
  # POST /streets.json
  def create
    @street = Street.new(street_params)

    if @street.save
      render json: @street, status: :created, location: @street
    else
      render json: @street.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /streets/1
  # PATCH/PUT /streets/1.json
  def update
    @street = Street.find(params[:id])

    if @street.update(street_params)
      head :no_content
    else
      render json: @street.errors, status: :unprocessable_entity
    end
  end

  # DELETE /streets/1
  # DELETE /streets/1.json
  def destroy
    @street.destroy

    head :no_content
  end

  private

    def set_street
      @street = Street.find(params[:id])
    end

    def street_params
      params.require(:street).permit(:neighborhood, :stype, :body_count, :description)
    end
end
