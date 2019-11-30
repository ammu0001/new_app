class AppDataController < ApplicationController
  before_action :set_app_datum, only: [:show, :update, :destroy]

  # GET /app_data
  # GET /app_data.json
  def index
    @app_data = AppDatum.all
  end

  # GET /app_data/1
  # GET /app_data/1.json
  def show
  end

  # POST /app_data
  # POST /app_data.json
  def create
    @app_datum = AppDatum.new(app_datum_params)

    if @app_datum.save
      render :show, status: :created, location: @app_datum
    else
      render json: @app_datum.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /app_data/1
  # PATCH/PUT /app_data/1.json
  def update
    if @app_datum.update(app_datum_params)
      render :show, status: :ok, location: @app_datum
    else
      render json: @app_datum.errors, status: :unprocessable_entity
    end
  end

  # DELETE /app_data/1
  # DELETE /app_data/1.json
  def destroy
    @app_datum.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_datum
      @app_datum = AppDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_datum_params
      params.fetch(:app_datum, {})
    end
end
