class MurdersController < ApplicationController
  before_action :set_murder, only: [:show, :update, :destroy]

  # GET /murders
  # GET /murders.json
  def index
    @murders = Murder.all

    render json: @murders
  end

  # GET /murders/1
  # GET /murders/1.json
  def show
    render json: @murder
  end

  # POST /murders
  # POST /murders.json
  def create
    @murder = Murder.new(murder_params)

    if @murder.save
      render json: @murder, status: :created, location: @murder
    else
      render json: @murder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /murders/1
  # PATCH/PUT /murders/1.json
  def update
    @murder = Murder.find(params[:id])

    if @murder.update(murder_params)
      head :no_content
    else
      render json: @murder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /murders/1
  # DELETE /murders/1.json
  def destroy
    @murder.destroy

    head :no_content
  end

  private

    def set_murder
      @murder = Murder.find(params[:id])
    end

    def murder_params
      params.require(:murder).permit(:neighborhood, :body_count, :description)
    end
end
