module JukeboxHelper
    def user_editable?
        # redirect_back(fallback_location: root_url) unless (current_user.profile.role == 'admin') || (current_user.profile.role == 'editor')
        if current_user.profile.role == 'admin'
            true
        elsif current_user.profile.role == 'editor'
            true
        else
            false
        end
    end
end
