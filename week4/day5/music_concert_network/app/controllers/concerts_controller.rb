class ConcertsController < ApplicationController

    def index
       @concerts_today = Concert.where(date: DateTime.now.to_date..Date.tomorrow)
       @concerts = Concert.where(date: Date.tomorrow..Date.today.end_of_month)
      render "index"
    end

    def show
      @concert = Concert.find(params[:id])
      @comments = @concert.comments
      @new_comment = Comment.new
      render "show"
    end

    def new
        @new_concert = Concert.new
        render "new"
    end

    def create
        @new_concert = Concert.new(concert_params)
        @new_concert.save
        redirect_to "/"
    end

    private

    def concert_params
        params.require(:concert).permit(:artist, :venue, :poster, :city, :date, :description, :price)
    end
end
