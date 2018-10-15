class JukeboxController < ApplicationController
  def index
    @artists = Artist.all.sample 3
    @songs = Song.all.sample 3
  end
end
