class GendersController < ApplicationController
  before_action :set_gender, only: [:show, :update, :destroy]

  # GET /genders
  def index
    @genders = Gender.all

    render json: @genders
  end

  # GET /genders/1
  def show
    render json: @gender
  end

  # POST /genders
  def create
    @gender = Gender.new(gender_params)

    if @gender.save
      render json: @gender, status: :created, location: @gender
    else
      render json: @gender.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /genders/1
  def update
    @gender = Gender.find(params[:id])

    if @gender.update(gender_params)
      render json: @gender
    else
      render json: @gender.errors, status: :unprocessable_entity
    end
  end

  # DELETE /genders/1
  def destroy
    @gender.destroy
  end

  private

    def set_gender
      @gender = Gender.find(params[:id])
    end

    def gender_params
      params.permit(:locality, :gtype, :criminal_complaint, :body_count)
    end
end
