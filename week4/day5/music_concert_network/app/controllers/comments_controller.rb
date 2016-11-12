class CommentsController < ApplicationController


    def create
        @concert = Concert.find(params[:concert_id])
        @new_comment = @concert.comments.new(comment_params)
        if @new_comment.save
            redirect_to "/concerts/#{params[:concert_id]}"
        else
            render "show"
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:email, :feedback, :concert_id)
    end

end
