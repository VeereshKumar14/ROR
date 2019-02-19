class MpostsController < ApplicationController
before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @mpost = current_user.mposts.build(mpost_params)
    if @mpost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
          @feed_items = []
      render 'welcome/index'
    end
  end
 def destroy
    @mpost.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end


  private

    def mpost_params
      params.require(:mpost).permit(:content)
    end
    def correct_user
          @mpost = current_user.mposts.find_by(id: params[:id])
          redirect_to root_url if @mpost.nil?
        end
end
