class PagesController < ApplicationController
    
    def home
        @reader = Reader.new
    end
    
end
