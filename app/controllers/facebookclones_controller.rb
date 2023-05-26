class FacebookclonesController < ApplicationController
  def index
    @facebookclones = Facebookclone.all
  end

  def new
    @facebookclone = Facebookclone.new
  end

  def create
    Facebookclone.create(facebookclone_params)
    redirect_to new_facebookclone_path
  end

  private

  def facebookclone_params
    params.require(:facebookclone).permit(:content)
  end
end
