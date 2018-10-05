class LikesController < ApplicationController
    # def create
    #     if Like.find_by(user: current_user,article_id: params[:id])
    #         Like.create!(user: current_user,article_id: params[:id])
    #     end
    # end
    # def destroy
    #     unless Like.find_by(user: current_user,article_id: params[:id])
    #         Like.find_by(user: current_user,article_id: params[:id]).destroy
    #     end
    # end
    before_action :authenticate_user!
    def like_toggle
       like = Like.find_by(user: current_user,article_id: params[:id])
       if like.nil?
           Like.create!(user: current_user,article_id: params[:id])
       else
           like.destroy
       end
       redirect_to article_url(params[:id])
    end
end
