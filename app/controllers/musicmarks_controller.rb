class MusicmarksController < ApplicationController
  before_action :set_musicmark, only: %i[ show edit update destroy ]

  # GET /musicmarks or /musicmarks.json
  def index
    @musicmarks = Musicmark.all
  end

  # GET /musicmarks/1 or /musicmarks/1.json
  def show
  end

  # GET /musicmarks/new
  def new
    @musicmark = Musicmark.new
  end

  # GET /musicmarks/1/edit
  def edit
  end

  # POST /musicmarks or /musicmarks.json
  def create
    @musicmark = Musicmark.new(musicmark_params)

    respond_to do |format|
      if @musicmark.save
        format.html { redirect_to @musicmark, notice: "Musicmark was successfully created." }
        format.json { render :show, status: :created, location: @musicmark }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @musicmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicmarks/1 or /musicmarks/1.json
  def update
    respond_to do |format|
      if @musicmark.update(musicmark_params)
        format.html { redirect_to @musicmark, notice: "Musicmark was successfully updated." }
        format.json { render :show, status: :ok, location: @musicmark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @musicmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicmarks/1 or /musicmarks/1.json
  def destroy
    @musicmark.destroy
    respond_to do |format|
      format.html { redirect_to musicmarks_url, notice: "Musicmark was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musicmark
      @musicmark = Musicmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def musicmark_params
      params.require(:musicmark).permit(:name, :band, :album, :category_id, :kind_id)
    end
end
