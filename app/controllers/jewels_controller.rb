class JewelsController < ApplicationController
  before_action :set_jewel, only: [:show, :edit, :update, :destroy, :buy, :sell]

  

  # GET /jewels
  # GET /jewels.json
  def index
    @jewels = Jewel.all
    @body_id = "jewels"
  end

  # GET /jewels/1
  # GET /jewels/1.json
  def show
    @body_id = "jewels"
  end

  # GET /jewels/new
  def new
    @jewel = Jewel.new
    @body_id = "jewels"
  end

  # GET /jewels/1/edit
  def edit
    @body_id = "jewels"
  end
  
  #buy jewel
  # get /jewels/id/buy
  def buy
    respond_to do |format|
      if @jewel.available
        @jewel.decrement!(:stock)
        format.html { redirect_to @jewel, notice: 'Jewel was successfully bought!' }
      else
        format.html { redirect_to @jewel, notice: 'This Jewel is out of stock' }
      end
    end
  end
  # get /jewels/sell
  def sell
    respond_to do |format|
        @jewel.increment!(:stock)
        format.html { redirect_to @jewel, notice: 'Jewel was successfully sold!' }
    end
  end

  # POST /jewels
  # POST /jewels.json
  def create
    @jewel = Jewel.new(jewel_params)

    respond_to do |format|
      if @jewel.save
        format.html { redirect_to @jewel, notice: 'Jewel was successfully created.' }
        format.json { render :show, status: :created, location: @jewel }
      else
        format.html { render :new }
        format.json { render json: @jewel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jewels/1
  # PATCH/PUT /jewels/1.json
  def update
    respond_to do |format|
      if @jewel.update(jewel_params)
        format.html { redirect_to @jewel, notice: 'Jewel was successfully updated.' }
        format.json { render :show, status: :ok, location: @jewel }
      else
        format.html { render :edit }
        format.json { render json: @jewel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewels/1
  # DELETE /jewels/1.json
  def destroy
    @jewel.destroy
    respond_to do |format|
      format.html { redirect_to jewels_url, notice: 'Jewel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewel
      @jewel = Jewel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jewel_params
      params.require(:jewel).permit(:name, :description, :Collection_id, :price, :stock, :picture)
    end
end
