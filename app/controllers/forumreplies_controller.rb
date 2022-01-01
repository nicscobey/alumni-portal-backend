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

    # POST /forumreplies
    def create 
        @forumreply = Forumreply.new(forumreply_params)
        @forumreply.user = @user 

        if @forumreply.save 
            render json: @forumreply, status: :created, location: @forumreply
        else 
            render json: @forumreply.errors, status: :unprocessable_entity 
        end
    end 

    private 
    # def set_forumreply
    #     @forumreply = Forumreply.find(params[:id]) 
    # end 

    def forumreply_params
        params.require(:forumreply).permit(:message, :user_id, :forum_id)
    end
end