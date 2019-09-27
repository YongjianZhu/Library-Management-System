class BorrowhistoriesController < ApplicationController
  before_action :set_borrowhistory, only: [:show, :edit, :update, :destroy]

  # GET /borrowhistories
  # GET /borrowhistories.json
  def index
    @borrowhistories = Borrowhistory.all
  end

  # GET /borrowhistories/1
  # GET /borrowhistories/1.json
  def show
  end

  # GET /borrowhistories/new
  def new
    @borrowhistory = Borrowhistory.new
  end

  # GET /borrowhistories/1/edit
  def edit
  end

  # POST /borrowhistories
  # POST /borrowhistories.json
  def create
    @borrowhistory = Borrowhistory.new(borrowhistory_params)

    respond_to do |format|
      if @borrowhistory.save
        format.html { redirect_to @borrowhistory, notice: 'Borrowhistory was successfully created.' }
        format.json { render :show, status: :created, location: @borrowhistory }
      else
        format.html { render :new }
        format.json { render json: @borrowhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /borrowhistories/1
  # PATCH/PUT /borrowhistories/1.json
  def update
    respond_to do |format|
      if @borrowhistory.update(borrowhistory_params)
        format.html { redirect_to @borrowhistory, notice: 'Borrowhistory was successfully updated.' }
        format.json { render :show, status: :ok, location: @borrowhistory }
      else
        format.html { render :edit }
        format.json { render json: @borrowhistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /borrowhistories/1
  # DELETE /borrowhistories/1.json
  def destroy
    @borrowhistory.destroy
    respond_to do |format|
      format.html { redirect_to borrowhistories_url, notice: 'Borrowhistory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_borrowhistory
      @borrowhistory = Borrowhistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def borrowhistory_params
      params.require(:borrowhistory).permit(:library_id, :university_id, :student_id, :book_id)
    end
end
