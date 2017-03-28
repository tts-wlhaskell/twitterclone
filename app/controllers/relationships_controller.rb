class RelationshipsController < ApplicationController
    def create
        relationship = current_user.relationships.build(friend_id: params[:friend_id])
        
        if relationship.save
            redirect_to user_path(id: params[:friend_id])
        else
            redirect_to users_path
        end
    end
    
    def destroy
        relationship = current_user.relationships.find(params[:id])
        relationship.destroy
        redirect_to users_path
    end
end
