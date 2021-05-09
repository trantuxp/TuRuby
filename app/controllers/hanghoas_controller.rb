class HanghoasController < ApplicationController
  before_action :set_hanghoa, only: %i[ show edit update destroy ]

  # GET /hanghoas or /hanghoas.json
  def index
    @hanghoas = Hanghoa.all
    
  end

  # GET /hanghoas/1 or /hanghoas/1.json
  def show
  end
  def chitietsp
    @hanghoasid = Hanghoa.find(params[:id])
  end
  # GET /hanghoas/new
  def new
    @hanghoa = Hanghoa.new
  end

  # GET /hanghoas/1/edit
  def edit
  end
  def bydanhmuc
    @hanghoasbydanhmuc = Hanghoa.where("iddanhmuc =?","1")
    @hanghoasbyid = Hanghoa.where("id =?",params[:id])
    @danhmucsid= Danhmuc.find(params[:id])
    @danhmucs= Danhmuc.all
  end
  def timsp
    ndtim = params[:ndtim]
    @danhmucs= Danhmuc.all
    @hanghoasbytim = Hanghoa.where("dongia >?", ndtim)
  end
  
  # POST /hanghoas or /hanghoas.json
  def create
    @hanghoa = Hanghoa.new(hanghoa_params)

    respond_to do |format|
      if @hanghoa.save
        format.html { redirect_to @hanghoa, notice: "Hanghoa was successfully created." }
        format.json { render :show, status: :created, location: @hanghoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @hanghoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hanghoas/1 or /hanghoas/1.json
  def update
    respond_to do |format|
      if @hanghoa.update(hanghoa_params)
        format.html { redirect_to @hanghoa, notice: "Hanghoa was successfully updated." }
        format.json { render :show, status: :ok, location: @hanghoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @hanghoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hanghoas/1 or /hanghoas/1.json
  def destroy
    @hanghoa.destroy
    respond_to do |format|
      format.html { redirect_to hanghoas_url, notice: "Hanghoa was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hanghoa
      @hanghoa = Hanghoa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hanghoa_params
      params.require(:hanghoa).permit(:tensp, :mota, :anh, :soluong, :dongia, :iddanhmuc)
    end
end
