class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]

  # GET /sites
  # GET /sites.json
  def index
    @sites = Site.all
    @email_p = Site.where.not(email: nil).length.to_f
    @twitter_p = Site.where.not(twitter: nil).length.to_f
    @facebook_p = Site.where.not(facebook: nil).length.to_f
    @instagram_p = Site.where.not(instagram: nil).length.to_f
    puts @email_p.to_f
    puts @sites.length.to_f
  end

  # GET /sites/1
  # GET /sites/1.json
  def show
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites
  # POST /sites.json
  def create
    sites = params[:comment]
    sites_array = sites.split(/\r\n+/x)
    sites_array.each do |site|
      url = Site.find_or_create_by(url: site.to_s)
      url.find_contacts

    end
    redirect_to action: 'index'
  end

  # PATCH/PUT /sites/1
  # PATCH/PUT /sites/1.json
  def update
    respond_to do |format|
      if @site.update(site_params)
        format.html { redirect_to @site, notice: 'Site was successfully updated.' }
        format.json { render :show, status: :ok, location: @site }
      else
        format.html { render :edit }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site.destroy
    respond_to do |format|
      format.html { redirect_to sites_url, notice: 'Site was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_site
      @site = Site.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def site_params
      params.fetch(:site, {})
    end
end
