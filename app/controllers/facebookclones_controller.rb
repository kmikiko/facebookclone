class FacebookclonesController < ApplicationController
  before_action :set_facebookclone, only: [:edit, :update, :destroy, ]
  
  def index
    @facebookclones = Facebookclone.all
  end

  def new
    if params[:back]
      @facebookclone = Facebookclone.new(facebookclone_params)
    else
      @facebookclone = Facebookclone.new
    end
  end

  def create
    @facebookclone = Facebookclone.new(facebookclone_params)
    if @facebookclone.save
      redirect_to facebookclones_path, notice: "投稿しました！"
    else
      render :new
    end
  end

  def edit
    @facebookclone = Facebookclone.find(params[:id])
  end

  def update
    if @facebookclone.update(facebookclone_params)
      redirect_to facebookclones_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def show 
    @facebookclone = Facebookclone.find(params[:id])
  end

  def destroy
    @facebookclone.destroy
    redirect_to facebookclones_path, notice:"削除しました"
  end

  def confirm
    @facebookclone = Facebookclone.new(facebookclone_params)
    render :new if @facebookclone.invalid?
  end

  private

  def facebookclone_params
    params.require(:facebookclone).permit(:content,:image, :image_cache)
  end

  def set_facebookclone
    @facebookclone = Facebookclone.find(params[:id])
  end
end
