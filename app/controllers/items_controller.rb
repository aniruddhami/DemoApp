class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
  end

  # GET /items/1
  # GET /items/1.json
  def show
    @item = Rails.cache.read(params[:id]) 
    @item = @item[:response] if !@item.blank?
    if @item.blank?
      @item = Item.find(params[:id]) 
      Rails.cache.write(@item.id, {name: @item.id, response: @item}, :expires_in => 120.second)
    end
  end

  # GET /items/new
  def new
    @item = current_user.items.new
  end

  # GET /items/1/edit
  def edit
    @item = current_user.items.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = current_user.items.new(item_params)

    respond_to do |format|
      if @item.save
        Rails.cache.write(@item.id, {name: @item.id, response: @item}, :expires_in => 120.second)
        # binding.pry
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    @item = current_user.items.find(params[:id])
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:title, :url, :text)
  end
end
