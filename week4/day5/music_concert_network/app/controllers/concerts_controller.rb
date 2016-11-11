class ConcertsController < ApplicationController

    def index
      @concerts = Concert.all
      render "index"
    end

    def new
		@new_concert = Concert.new
		render "new"
	end

    def create
        @new_concert = Concert.new(
            :artist => params[:concert][:artist],
            :venue => params[:concert][:venue],
            :city => params[:concert][:city],
            :date => params[:concert][:date],
            :description => params[:concert][:description],
            :price => params[:concert][:price])
        @new_concert.save

        redirect_to :action => "index"
    end
end
