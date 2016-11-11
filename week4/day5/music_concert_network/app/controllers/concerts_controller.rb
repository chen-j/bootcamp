class ConcertsController < ApplicationController

    def index
      @concerts = Concert.all
      @concerts_today = Concert.all
      render "index"
    end

    def show
      @concert = Concert.find(params[:id])
      render "show"
    end

    def new
        @new_concert = Concert.new
        render "new"
    end

    def create
        @new_concert = Concert.new(entry_params)
        @new_concert.save
        redirect_to "/"
    end

    private

    def entry_params
        params.require(:concert).permit(:artist, :venue, :city, :date, :description, :price)
    end
end
