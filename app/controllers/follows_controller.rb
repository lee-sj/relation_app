class FollowsController < ApplicationController
    before_action :authenticate_user!
    
    def artist_follow_toggle
       @artist = Artist.find params[:id]
       if !@artist.followed_by?(current_user)
           current_user.follow(@artist)
       else
           current_user.stop_following(@artist)
       end
       redirect_to @artist
    end

    def song_follow_toggle 
       @song = Song.find params[:id]
       if !@song.followed_by?(current_user)
           current_user.follow(@song)
       else
           current_user.stop_following(@song)
       end
       redirect_to @song
    end
end
