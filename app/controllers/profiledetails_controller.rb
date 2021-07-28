class ProfiledetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_profiledetail, only: %i[ show edit update destroy ]

  # GET /profiledetails or /profiledetails.json Profile_Details
  def index
    @profiledetails = Profiledetail.all
  end

  # GET /profiledetails/1 or /profiledetails/1.json
  def show
  end

  # GET /profiledetails/new
  def new
    user = current_user
    @profiledetail = user.profiledetail || Profiledetail.new
   end

  # GET /profiledetails/1/edit
  def edit
  end

  # POST /profiledetails or /profiledetails.json
  def create
    @profiledetail = Profiledetail.new(profiledetail_params)

    respond_to do |format|
      if @profiledetail.save
        format.html { redirect_to @profiledetail, notice: "Profiledetail was successfully created." }
        format.json { render :show, status: :created, location: @profiledetail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profiledetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiledetails/1 or /profiledetails/1.json
  def update
    respond_to do |format|
      if @profiledetail.update(profiledetail_params)
        format.html { redirect_to @profiledetail, notice: "Profiledetail was successfully updated." }
        format.json { render :show, status: :ok, location: @profiledetail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profiledetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiledetails/1 or /profiledetails/1.json
  def destroy
    @profiledetail.destroy
    respond_to do |format|
      format.html { redirect_to profiledetails_url, notice: "Profiledetail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profiledetail
      @profiledetail = current_user.profiledetail
    end

    # Only allow a list of trusted parameters through.
    def profiledetail_params
      params.require(:profiledetail).permit(:first_name, :last_name, :education, :experience, :resume, :user_id)
    end
end
