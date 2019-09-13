class MyarticlesController < ApplicationController
  before_action :set_myarticle, only: [:show, :edit, :update, :destroy]

  # GET /myarticles
  # GET /myarticles.json
  def index
    @myarticles = Myarticle.search_article(current_user.id)
  end

  # GET /myarticles/1
  # GET /myarticles/1.json
  def show
  end

  # GET /myarticles/new
  def new
    @myarticle = Myarticle.new
  end

  # GET /myarticles/1/edit
  def edit
  end

  # POST /myarticles
  # POST /myarticles.json
  def create
    @myarticle = Myarticle.new(myarticle_params)

    respond_to do |format|
      if @myarticle.save
        format.html { redirect_to @myarticle, notice: 'Myarticle was successfully created.' }
        format.json { render :show, status: :created, location: @myarticle }
      else
        format.html { render :new }
        format.json { render json: @myarticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myarticles/1
  # PATCH/PUT /myarticles/1.json
  def update
    respond_to do |format|
      if @myarticle.update(myarticle_params)
        format.html { redirect_to @myarticle, notice: 'Myarticle was successfully updated.' }
        format.json { render :show, status: :ok, location: @myarticle }
      else
        format.html { render :edit }
        format.json { render json: @myarticle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myarticles/1
  # DELETE /myarticles/1.json
  def destroy
    @myarticle.destroy
    respond_to do |format|
      format.html { redirect_to myarticles_url, notice: 'Myarticle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myarticle
      @myarticle = Myarticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myarticle_params
      params.require(:myarticle).permit(:user_id, :article_id, :time, :date)
    end
end
