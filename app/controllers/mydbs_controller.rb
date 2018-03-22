class MydbsController < ApplicationController
  before_action :set_mydb, only: [:show, :edit, :update, :destroy]

  # GET /mydbs
  # GET /mydbs.json
  def index
    @mydbs = Mydb.all
  end

  # GET /mydbs/1
  # GET /mydbs/1.json
  def show
  end

  # GET /mydbs/new
  def new
    @mydb = Mydb.new
  end

  # GET /mydbs/1/edit
  def edit
  end

  # POST /mydbs
  # POST /mydbs.json
  def create
    @mydb = Mydb.new(mydb_params)

    respond_to do |format|
      if @mydb.save
        format.html { redirect_to @mydb, notice: 'Mydb was successfully created.' }
        format.json { render :show, status: :created, location: @mydb }
      else
        format.html { render :new }
        format.json { render json: @mydb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mydbs/1
  # PATCH/PUT /mydbs/1.json
  def update
    respond_to do |format|
      if @mydb.update(mydb_params)
        format.html { redirect_to @mydb, notice: 'Mydb was successfully updated.' }
        format.json { render :show, status: :ok, location: @mydb }
      else
        format.html { render :edit }
        format.json { render json: @mydb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mydbs/1
  # DELETE /mydbs/1.json
  def destroy
    @mydb.destroy
    respond_to do |format|
      format.html { redirect_to mydbs_url, notice: 'Mydb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mydb
      @mydb = Mydb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mydb_params
      params.require(:mydb).permit(:title, :vid_link, :image)
    end
end
