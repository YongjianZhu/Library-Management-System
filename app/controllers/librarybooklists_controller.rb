class LibrarybooklistsController < ApplicationController
  before_action :set_librarybooklist, only: [:show, :edit, :update, :destroy]

  # GET /librarybooklists
  # GET /librarybooklists.json
  def index
    @librarybooklists = Librarybooklist.all
  end

  # GET /librarybooklists/1
  # GET /librarybooklists/1.json
  def show
  end

  # GET /librarybooklists/new
  def new
    @librarybooklist = Librarybooklist.new
  end

  # GET /librarybooklists/1/edit
  def edit
  end

  # POST /librarybooklists
  # POST /librarybooklists.json
  def create
    @librarybooklist = Librarybooklist.new(librarybooklist_params)

    respond_to do |format|
      if @librarybooklist.save
        format.html { redirect_to @librarybooklist, notice: 'Librarybooklist was successfully created.' }
        format.json { render :show, status: :created, location: @librarybooklist }
      else
        format.html { render :new }
        format.json { render json: @librarybooklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /librarybooklists/1
  # PATCH/PUT /librarybooklists/1.json
  def update
    respond_to do |format|
      if @librarybooklist.update(librarybooklist_params)
        format.html { redirect_to @librarybooklist, notice: 'Librarybooklist was successfully updated.' }
        format.json { render :show, status: :ok, location: @librarybooklist }
      else
        format.html { render :edit }
        format.json { render json: @librarybooklist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /librarybooklists/1
  # DELETE /librarybooklists/1.json
  def destroy
    @librarybooklist.destroy
    respond_to do |format|
      format.html { redirect_to librarybooklists_url, notice: 'Librarybooklist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_librarybooklist
      @librarybooklist = Librarybooklist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def librarybooklist_params
      params.require(:librarybooklist).permit(:book_id, :number, :library_id, :university_id)
    end
end
