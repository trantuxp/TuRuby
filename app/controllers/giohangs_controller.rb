class GiohangsController < ApplicationController
  before_action :set_giohang, only: %i[ show edit update destroy ]

  # GET /giohangs or /giohangs.json
  def index
    @giohangs = Giohang.all
  end

  # GET /giohangs/1 or /giohangs/1.json
  def show
  end

  # GET /giohangs/new
  def new
    @giohang = Giohang.new
  end

  # GET /giohangs/1/edit
  def edit
  end
  def add
    @giohanged= Giohang.where("idsp=?&&iduser=?",params[:idsp],params[:iduser])
    
    if @giohanged
      @giohanged.each do |giohanged|
      soluong=giohanged.soluong.to_i+params[:soluong].to_i
      @giohangadd= Giohang.where("id=?",giohanged.id).update(soluong:soluong)
      end
    else
    @giohangadd = Giohang.new(idsp:params[:idsp],iduser:params[:iduser],soluong:params[:soluong])
    @giohangadd.save
    end
    redirect_to '/giohang'

  end 
  def fix
    @giohangfix= Giohang.where("id=?",params[:id]).update(soluong:params[:soluong])
   
    redirect_to '/giohang'

  end 
  def delete
    @giohangdelete = Giohang.where("id=?",params[:id])
    
    @giohangdelete.each do |giohangdelete|
      giohangdelete.destroy
      redirect_to '/giohang'
      end 
      
  end
  
  def giohang

    @giohangss= Giohang.all
    
   
  end 
  # POST /giohangs or /giohangs.json
  def create
    @giohang = Giohang.new(giohang_params)

    respond_to do |format|
      if @giohang.save
        format.html { redirect_to @giohang, notice: "Giohang was successfully created." }
        format.json { render :show, status: :created, location: @giohang }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @giohang.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giohangs/1 or /giohangs/1.json
  def update
    respond_to do |format|
      if @giohang.update(giohang_params)
        format.html { redirect_to @giohang, notice: "Giohang was successfully updated." }
        format.json { render :show, status: :ok, location: @giohang }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @giohang.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giohangs/1 or /giohangs/1.json
  def destroy
    @giohang.destroy
    respond_to do |format|
      format.html { redirect_to giohangs_url, notice: "Giohang was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giohang
      @giohang = Giohang.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def giohang_params
      params.require(:giohang).permit(:idsp, :iduser, :soluong)
    end
end
