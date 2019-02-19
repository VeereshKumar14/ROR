class WelcomeController < ApplicationController
  def index
      if logged_in?
           @mpost  = current_user.mposts.build
           @feed_items = current_user.feed.paginate(page: params[:page])
         end
  end
end
