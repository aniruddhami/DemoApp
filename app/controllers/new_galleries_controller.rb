class NewGalleriesController < ApplicationController
  before_action :set_new_gallery, only: [:show, :edit, :update, :destroy]

  # GET /new_galleries
  # GET /new_galleries.json
  def index
    @new_galleries = NewGallery.all
  end

  # GET /new_galleries/1
  # GET /new_galleries/1.json
  def show
  end

  # GET /new_galleries/new
  def new
    @new_gallery = NewGallery.new
  end

  # GET /new_galleries/1/edit
  def edit
  end

  # POST /new_galleries
  # POST /new_galleries.json
  def create
    @new_gallery = NewGallery.new(new_gallery_params)

    respond_to do |format|
      if @new_gallery.save
        format.html { redirect_to @new_gallery, notice: 'New gallery was successfully created.' }
        format.json { render :show, status: :created, location: @new_gallery }
      else
        format.html { render :new }
        format.json { render json: @new_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_galleries/1
  # PATCH/PUT /new_galleries/1.json
  def update
    respond_to do |format|
      if @new_gallery.update(new_gallery_params)
        format.html { redirect_to @new_gallery, notice: 'New gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_gallery }
      else
        format.html { render :edit }
        format.json { render json: @new_gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_galleries/1
  # DELETE /new_galleries/1.json
  def destroy
    @new_gallery.destroy
    respond_to do |format|
      format.html { redirect_to new_galleries_url, notice: 'New gallery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_gallery
      @new_gallery = NewGallery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_gallery_params
      params.require(:new_gallery).permit(:user_id, :name, :discription, :images)
    end
end
