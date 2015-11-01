class ReadersController < ApplicationController
    
    def new
        @reader = Reader.new
    end
    
    def create
        @reader = Reader.new(reader_params)
        
        if @contact.save
            email = params[:reader][:email]
            
            
            flash[:success] = 'Thank you for registering.'
            redirect_to new_contact_path
        else
            flash[:danger] = 'Something wrong occured, please try again.'
            redirect_to new_contact_path
        end
    end
        
        private
        
        def reader_params
            params.require(:reader).permit(:email)
        end
end