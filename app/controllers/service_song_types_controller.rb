class ServiceSongTypesController < ApplicationController
  before_action :set_service_song_type, only: [:show, :edit, :update, :destroy]

  # GET /service_song_types
  # GET /service_song_types.json
  def index
    @service_song_types = ServiceSongType.all
  end

  # GET /service_song_types/1
  # GET /service_song_types/1.json
  def show
  end

  # GET /service_song_types/new
  def new
    @service_song_type = ServiceSongType.new
  end

  # GET /service_song_types/1/edit
  def edit
  end

  # POST /service_song_types
  # POST /service_song_types.json
  def create
    @service_song_type = ServiceSongType.new(service_song_type_params)

    respond_to do |format|
      if @service_song_type.save
        format.html { redirect_to @service_song_type, notice: 'Service song type was successfully created.' }
        format.json { render :show, status: :created, location: @service_song_type }
      else
        format.html { render :new }
        format.json { render json: @service_song_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_song_types/1
  # PATCH/PUT /service_song_types/1.json
  def update
    respond_to do |format|
      if @service_song_type.update(service_song_type_params)
        format.html { redirect_to @service_song_type, notice: 'Service song type was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_song_type }
      else
        format.html { render :edit }
        format.json { render json: @service_song_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_song_types/1
  # DELETE /service_song_types/1.json
  def destroy
    @service_song_type.destroy
    respond_to do |format|
      format.html { redirect_to service_song_types_url, notice: 'Service song type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_song_type
      @service_song_type = ServiceSongType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_song_type_params
      params.require(:service_song_type).permit(:name)
    end
end
