class DemoitemsController < ApplicationController
  before_action :set_demoitem, only: [:show, :edit, :update, :destroy]

  # GET /demoitems
  # GET /demoitems.json
  def index
    @demoitems = Demoitem.all
  end

  # GET /demoitems/1
  # GET /demoitems/1.json
  def show
  end

  # GET /demoitems/new
  def new
    @demoitem = Demoitem.new
  end

  # GET /demoitems/1/edit
  def edit
  end

  # POST /demoitems
  # POST /demoitems.json
  def create
    @demoitem = Demoitem.new(demoitem_params)

    respond_to do |format|
      if @demoitem.save
        format.html { redirect_to @demoitem, notice: 'Demoitem was successfully created.' }
        format.json { render :show, status: :created, location: @demoitem }
      else
        format.html { render :new }
        format.json { render json: @demoitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /demoitems/1
  # PATCH/PUT /demoitems/1.json
  def update
    respond_to do |format|
      if @demoitem.update(demoitem_params)
        format.html { redirect_to @demoitem, notice: 'Demoitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @demoitem }
      else
        format.html { render :edit }
        format.json { render json: @demoitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /demoitems/1
  # DELETE /demoitems/1.json
  def destroy
    @demoitem.destroy
    respond_to do |format|
      format.html { redirect_to demoitems_url, notice: 'Demoitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demoitem
      @demoitem = Demoitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def demoitem_params
      params.require(:demoitem).permit(:title, :url, :text)
    end
end
