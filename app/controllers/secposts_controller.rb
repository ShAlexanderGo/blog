class SecpostsController < ApplicationController
  before_action :set_secpost, only: [:show, :edit, :update, :destroy]

  # GET /secposts
  # GET /secposts.json
  def index
    @secposts = Secpost.all
  end

  # GET /secposts/1
  # GET /secposts/1.json
  def show
  end

  # GET /secposts/new
  def new
    @secpost = Secpost.new
  end

  # GET /secposts/1/edit
  def edit
  end

  # POST /secposts
  # POST /secposts.json
  def create
    @secpost = Secpost.new(secpost_params)

    respond_to do |format|
      if @secpost.save
        format.html { redirect_to @secpost, notice: 'Secpost was successfully created.' }
        format.json { render :show, status: :created, location: @secpost }
      else
        format.html { render :new }
        format.json { render json: @secpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secposts/1
  # PATCH/PUT /secposts/1.json
  def update
    respond_to do |format|
      if @secpost.update(secpost_params)
        format.html { redirect_to @secpost, notice: 'Secpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @secpost }
      else
        format.html { render :edit }
        format.json { render json: @secpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secposts/1
  # DELETE /secposts/1.json
  def destroy
    @secpost.destroy
    respond_to do |format|
      format.html { redirect_to secposts_url, notice: 'Secpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secpost
      @secpost = Secpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secpost_params
      params.require(:secpost).permit(:title, :body, :user_id)
    end
end
