class VidlistsController < ApplicationController
  before_action :set_vidlist, only: [:show, :edit, :update, :destroy]

  # GET /vidlists
  # GET /vidlists.json
  def index
    @vidlists = Vidlist.all
  end

  # GET /vidlists/1
  # GET /vidlists/1.json
  def show
  end

  # GET /vidlists/new
  def new
    @vidlist = Vidlist.new
  end

  # GET /vidlists/1/edit
  def edit
  end

  # POST /vidlists
  # POST /vidlists.json
  def create
    @vidlist = Vidlist.new(vidlist_params)

    respond_to do |format|
      if @vidlist.save
        format.html { redirect_to @vidlist, notice: 'Vidlist was successfully created.' }
        format.json { render :show, status: :created, location: @vidlist }
      else
        format.html { render :new }
        format.json { render json: @vidlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vidlists/1
  # PATCH/PUT /vidlists/1.json
  def update
    respond_to do |format|
      if @vidlist.update(vidlist_params)
        format.html { redirect_to @vidlist, notice: 'Vidlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @vidlist }
      else
        format.html { render :edit }
        format.json { render json: @vidlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vidlists/1
  # DELETE /vidlists/1.json
  def destroy
    @vidlist.destroy
    respond_to do |format|
      format.html { redirect_to vidlists_url, notice: 'Vidlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vidlist
      @vidlist = Vidlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vidlist_params
      params.require(:vidlist).permit(:id, :tags)
    end
end
