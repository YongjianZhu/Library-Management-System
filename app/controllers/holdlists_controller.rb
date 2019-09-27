class HoldlistsController < ApplicationController
  before_action :set_holdlist, only: [:show, :edit, :update, :destroy]

  # GET /holdlists
  # GET /holdlists.json
  def index
    @holdlists = Holdlist.all
  end

  # GET /holdlists/1
  # GET /holdlists/1.json
  def show
  end

  # GET /holdlists/new
  def new
    @holdlist = Holdlist.new
  end

  # GET /holdlists/1/edit
  def edit
  end

  # POST /holdlists
  # POST /holdlists.json
  def create
    @holdlist = Holdlist.new(holdlist_params)

    respond_to do |format|
      if @holdlist.save
        format.html { redirect_to @holdlist, notice: 'Holdlist was successfully created.' }
        format.json { render :show, status: :created, location: @holdlist }
      else
        format.html { render :new }
        format.json { render json: @holdlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /holdlists/1
  # PATCH/PUT /holdlists/1.json
  def update
    respond_to do |format|
      if @holdlist.update(holdlist_params)
        format.html { redirect_to @holdlist, notice: 'Holdlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @holdlist }
      else
        format.html { render :edit }
        format.json { render json: @holdlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holdlists/1
  # DELETE /holdlists/1.json
  def destroy
    @holdlist.destroy
    respond_to do |format|
      format.html { redirect_to holdlists_url, notice: 'Holdlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holdlist
      @holdlist = Holdlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def holdlist_params
      params.require(:holdlist).permit(:student_id, :university_id, :book_id, :library_id)
    end
end
