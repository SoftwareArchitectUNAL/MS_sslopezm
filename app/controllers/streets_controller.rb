class StreetsController < ApplicationController
  before_action :set_street, only: [:show, :update, :destroy]

  # GET /streets
  def index
    @streets = Street.all

    render json: @streets
  end

  # GET /streets/1
  def show
    render json: @street
  end

  # POST /streets
  def create
    @street = Street.new(street_params)

    if @street.save
      render json: @street, status: :created, location: @street
    else
      render json: @street.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /streets/1
  def update
    @street = Street.find(params[:id])

    if @street.update(street_params)
      render json: @street
    else
      render json: @street.errors, status: :unprocessable_entity
    end
  end

  # DELETE /streets/1
  def destroy
    @street.destroy
  end

  private

    def set_street
      @street = Street.find(params[:id])
    end

    def street_params
      params.permit(:locality, :stype, :body_count, :description)
    end
end
