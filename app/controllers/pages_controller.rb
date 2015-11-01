class PagesController < ApplicationController
    
    def home
        @reader = Reader.create
    
    end
    
end
