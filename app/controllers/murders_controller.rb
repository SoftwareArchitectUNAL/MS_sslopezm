class MurdersController < ApplicationController
  before_action :set_murder, only: [:show, :update, :destroy]

  # GET /murders
  def index
    @murders = Murder.all

    render json: @murders
  end

  # GET /murders/1
  def show
    render json: @murder
  end

  # POST /murders
  def create
    @murder = Murder.new(murder_params)

    if @murder.save
      render json: @murder, status: :created, location: @murder
    else
      render json: @murder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /murders/1
  def update
    if @murder.update(murder_params)
      render json: @murder
    else
      render json: @murder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /murders/1
  def destroy
    @murder.destroy
  end

  private

    def set_murder
      @murder = Murder.find(params[:id])
    end

    def murder_params
      params.permit(:locality, :body_count, :description)
    end
end
