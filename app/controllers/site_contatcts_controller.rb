class SiteContatctsController < ApplicationController
  before_action :set_site_contatct, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:new]
  # GET /site_contatcts
  # GET /site_contatcts.json
  def index
    @site_contatcts = SiteContatct.all
  end

  # GET /site_contatcts/1
  # GET /site_contatcts/1.json
  def show
  end

  # GET /site_contatcts/new
  def new
    @site_contatct = SiteContatct.new
  end

  # GET /site_contatcts/1/edit
  def edit
  end

  # POST /site_contatcts
  # POST /site_contatcts.json
  def create
    @site_contatct = SiteContatct.new(site_contatct_params)
    respond_to do |format|
      if @site_contatct.save
        format.html { redirect_to root_path, notice: 'Site contatct was successfully created.' }
        format.json { render :show, status: :created, location: @site_contatct }
      else
        format.html { render :new }
        format.json { render json: @site_contatct.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /site_contatcts/1
  # PATCH/PUT /site_contatcts/1.json
  def update
    respond_to do |format|
      if @site_contatct.update(site_contatct_params)
        format.html { redirect_to @site_contatct, notice: 'Site contatct was successfully updated.' }
        format.json { render :show, status: :ok, location: @site_contatct }
      else
        format.html { render :edit }
        format.json { render json: @site_contatct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /site_contatcts/1
  # DELETE /site_contatcts/1.json
  def destroy
    @site_contatct.destroy
    respond_to do |format|
      format.html { redirect_to site_contatcts_url, notice: 'Site contatct was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site_contatct
      @site_contatct = SiteContatct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_contatct_params
      params.require(:site_contatct).permit(:name, :email, :message, :answered)
    end
end
