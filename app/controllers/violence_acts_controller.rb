class ViolenceActsController < ApplicationController
  before_action :set_violence_act, only: [:show, :update, :destroy]

  # GET /violence_acts
  # GET /violence_acts.json
  def index
    @violence_acts = ViolenceAct.all

    render json: @violence_acts
  end

  # GET /violence_acts/1
  # GET /violence_acts/1.json
  def show
    render json: @violence_act
  end

  # POST /violence_acts
  # POST /violence_acts.json
  def create
    @violence_act = ViolenceAct.new(violence_act_params)

    if @violence_act.save
      render json: @violence_act, status: :created, location: @violence_act
    else
      render json: @violence_act.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /violence_acts/1
  # PATCH/PUT /violence_acts/1.json
  def update
    @violence_act = ViolenceAct.find(params[:id])

    if @violence_act.update(violence_act_params)
      head :no_content
    else
      render json: @violence_act.errors, status: :unprocessable_entity
    end
  end

  # DELETE /violence_acts/1
  # DELETE /violence_acts/1.json
  def destroy
    @violence_act.destroy

    head :no_content
  end

  private

    def set_violence_act
      @violence_act = ViolenceAct.find(params[:id])
    end

    def violence_act_params
      params.require(:violence_act).permit(:act_type, :act_street_id, :act_gender_id, :act_intrafamily_id, :act_murder_id)
    end
end
