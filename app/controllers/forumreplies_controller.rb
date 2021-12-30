class ForumrepliesController < ApplicationController

    #GET /forumreplies
    def index 
        @forumreplies = Forumreply.all 

        render json: @forumreplies
    end 

    #GET /forumreplies/:id
    def show 
        render json: @forumreply 
    end 

    private 
    def set_forumreply
        @forumreply = Forumreply.find(params[:id]) 
    end 

end