class OsdefsController < ApplicationController
  before_action :set_osdef, only: [:show, :edit, :update, :destroy]

  # GET /osdefs
  # GET /osdefs.json
  def index
    @osdefs = Osdef.all
  end

  # GET /osdefs/1
  # GET /osdefs/1.json
  def show
  end

  # GET /osdefs/new
  def new
    @osdef = Osdef.new
  end

  # GET /osdefs/1/edit
  def edit
  end

  # POST /osdefs
  # POST /osdefs.json
  def create
    @osdef = Osdef.new(osdef_params)

    respond_to do |format|
      if @osdef.save
        format.html { redirect_to @osdef, notice: 'Osdef was successfully created.' }
        format.json { render :show, status: :created, location: @osdef }
      else
        format.html { render :new }
        format.json { render json: @osdef.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /osdefs/1
  # PATCH/PUT /osdefs/1.json
  def update
    respond_to do |format|
      if @osdef.update(osdef_params)
        format.html { redirect_to @osdef, notice: 'Osdef was successfully updated.' }
        format.json { render :show, status: :ok, location: @osdef }
      else
        format.html { render :edit }
        format.json { render json: @osdef.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /osdefs/1
  # DELETE /osdefs/1.json
  def destroy
    @osdef.destroy
    respond_to do |format|
      format.html { redirect_to osdefs_url, notice: 'Osdef was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_osdef
      @osdef = Osdef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def osdef_params
      params.require(:osdef).permit(:name, :version)
    end
end
