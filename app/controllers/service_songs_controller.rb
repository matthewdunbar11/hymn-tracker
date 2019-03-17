class ServiceSongsController < ApplicationController
  before_action :set_service_song, only: [:show, :edit, :update, :destroy]

  # GET /service_songs
  # GET /service_songs.json
  def index
    @service_songs = ServiceSong.all
  end

  # GET /service_songs/1
  # GET /service_songs/1.json
  def show
  end

  # GET /service_songs/new
  def new
    @service_song = ServiceSong.new(service_id: params[:service_id])
  end

  # GET /service_songs/1/edit
  def edit
  end

  # POST /service_songs
  # POST /service_songs.json
  def create
    @service_song = ServiceSong.new(service_song_params)

    respond_to do |format|
      if @service_song.save
        format.html { redirect_to @service_song.service, notice: 'Service song was successfully created.' }
        format.json { render :show, status: :created, location: @service_song }
      else
        format.html { render :new }
        format.json { render json: @service_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_songs/1
  # PATCH/PUT /service_songs/1.json
  def update
    respond_to do |format|
      if @service_song.update(service_song_params)
        format.html { redirect_to @service_song.service, notice: 'Service song was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_song }
      else
        format.html { render :edit }
        format.json { render json: @service_song.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_songs/1
  # DELETE /service_songs/1.json
  def destroy
    @service_song.destroy
    respond_to do |format|
      format.html { redirect_to service_songs_url, notice: 'Service song was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_song
      @service_song = ServiceSong.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_song_params
      params.require(:service_song).permit(:service_id, :song_id, :service_song_type_id)
    end
end
