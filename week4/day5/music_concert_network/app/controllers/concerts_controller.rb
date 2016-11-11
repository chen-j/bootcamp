class ConcertsController < ApplicationController
    def index
      @concerts = Concert.all
      render "index"
    end
end
