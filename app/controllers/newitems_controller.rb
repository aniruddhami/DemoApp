class NewitemsController < ApplicationController
  before_action :set_newitem, only: [:show, :edit, :update, :destroy]

  # GET /newitems
  # GET /newitems.json
  def index
    @newitems = Newitem.all
  end

  # GET /newitems/1
  # GET /newitems/1.json
  def show
  end

  # GET /newitems/new
  def new
    @newitem = Newitem.new
  end

  # GET /newitems/1/edit
  def edit
  end

  # POST /newitems
  # POST /newitems.json
  def create
    @newitem = Newitem.new(newitem_params)

    respond_to do |format|
      if @newitem.save
        format.html { redirect_to @newitem, notice: 'Newitem was successfully created.' }
        format.json { render :show, status: :created, location: @newitem }
      else
        format.html { render :new }
        format.json { render json: @newitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newitems/1
  # PATCH/PUT /newitems/1.json
  def update
    respond_to do |format|
      if @newitem.update(newitem_params)
        format.html { redirect_to @newitem, notice: 'Newitem was successfully updated.' }
        format.json { render :show, status: :ok, location: @newitem }
      else
        format.html { render :edit }
        format.json { render json: @newitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newitems/1
  # DELETE /newitems/1.json
  def destroy
    @newitem.destroy
    respond_to do |format|
      format.html { redirect_to newitems_url, notice: 'Newitem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newitem
      @newitem = Newitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newitem_params
      params.require(:newitem).permit(:title, :url, :text)
    end
end
