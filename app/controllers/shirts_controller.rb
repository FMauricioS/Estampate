class ShirtsController < ApplicationController
   before_action :set_shirt, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_admin_user!, except: [:index, :show]

  # GET /shirts
  def index
    @shirts = Shirt.all
  end

  # GET /shirts/1
  def show
  end

  # GET /shirts/new
  def new
    @shirt = Shirt.new
  end

  # GET /shirts/1/edit
  def edit
  end

  # POST /shirts
  def create
    @shirt = Shirt.new(shirt_params)
    respond_to do |format|
      if @shirt.save
        format.html { redirect_to @shirt, notice: 'Shirt was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /shirts/1
  def update
    respond_to do |format|
      if @shirt.update(shirt_params)
        format.html { redirect_to @shirt, notice: 'Shirt was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /shirts/1
  def destroy
    @shirt.destroy
    respond_to do |format|
      format.html { redirect_to shirts_url, notice: 'Shirt was successfully destroyed.' }
    end
  end

  private
  def set_shirt
    @shirt = Shirt.find(params[:id])
  end

  def shirt_params
    params.require(:shirt).permit(:price, :quantity, :description, :photo, :title, :sizes_text, categories_attributes: [:name])
  end
end
