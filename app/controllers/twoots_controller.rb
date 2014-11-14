class TwootsController < ApplicationController
  before_action :set_twoot, only: [:show, :edit, :update, :destroy]

  # GET /twoots
  # GET /twoots.json
  def index
    @twoots = Twoot.all
  end

  # GET /twoots/1
  # GET /twoots/1.json
  def show
  end

  # GET /twoots/new
  def new
    @twoot = Twoot.new
  end

  # GET /twoots/1/edit
  def edit
  end

  # POST /twoots
  # POST /twoots.json
  def create
    @twoot = Twoot.new(twoot_params)
    @twoot.user_id = current_user.id
    respond_to do |format|
      if @twoot.save
        format.html { redirect_to @twoot, notice: 'Twoot was successfully created.' }
        format.json { render :show, status: :created, location: @twoot }
      else
        format.html { render :new }
        format.json { render json: @twoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twoots/1
  # PATCH/PUT /twoots/1.json
  def update
    respond_to do |format|
      if @twoot.update(twoot_params)
        format.html { redirect_to @twoot, notice: 'Twoot was successfully updated.' }
        format.json { render :show, status: :ok, location: @twoot }
      else
        format.html { render :edit }
        format.json { render json: @twoot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twoots/1
  # DELETE /twoots/1.json
  def destroy
    @twoot.destroy
    respond_to do |format|
      format.html { redirect_to twoots_url, notice: 'Twoot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twoot
      @twoot = Twoot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def twoot_params
      params.require(:twoot).permit(:content, :user_id)
    end
end
