class StudentborrowlistsController < ApplicationController
  before_action :set_studentborrowlist, only: [:show, :edit, :update, :destroy]

  # GET /studentborrowlists
  # GET /studentborrowlists.json
  def index
    @studentborrowlists = Studentborrowlist.all
  end

  # GET /studentborrowlists/1
  # GET /studentborrowlists/1.json
  def show
  end

  # GET /studentborrowlists/new
  def new
    @studentborrowlist = Studentborrowlist.new
  end

  # GET /studentborrowlists/1/edit
  def edit
  end

  # POST /studentborrowlists
  # POST /studentborrowlists.json
  def create
    @studentborrowlist = Studentborrowlist.new(studentborrowlist_params)

    respond_to do |format|
      if @studentborrowlist.save
        format.html { redirect_to @studentborrowlist, notice: 'Studentborrowlist was successfully created.' }
        format.json { render :show, status: :created, location: @studentborrowlist }
      else
        format.html { render :new }
        format.json { render json: @studentborrowlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentborrowlists/1
  # PATCH/PUT /studentborrowlists/1.json
  def update
    respond_to do |format|
      if @studentborrowlist.update(studentborrowlist_params)
        format.html { redirect_to @studentborrowlist, notice: 'Studentborrowlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @studentborrowlist }
      else
        format.html { render :edit }
        format.json { render json: @studentborrowlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentborrowlists/1
  # DELETE /studentborrowlists/1.json
  def destroy
    @studentborrowlist.destroy
    respond_to do |format|
      format.html { redirect_to studentborrowlists_url, notice: 'Studentborrowlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentborrowlist
      @studentborrowlist = Studentborrowlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studentborrowlist_params
      params.require(:studentborrowlist).permit(:student_id, :book_id, :duedate)
    end
end
