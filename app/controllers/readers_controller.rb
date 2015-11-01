class ReadersController < ApplicationController
    
    def new
    end
    
    def create
        @reader = Contact.new(contact_params)
        if @contact.save
            
        else
            
        end
        
        private
        
        def contact_params
            params.require(:reader).permit(:name,:email)
        end
    end
end