class ReadersController < ApplicationController
    
    def new
        @reader = Reader.new
    end
    
    def create
        @reader = Reader.new(reader_params)
        
        newEmail = params[:reader][:email]
        
        if Reader.exists?(email: newEmail)
            
            flash[:danger] = 'You are already registered.'
            
            
        else
        
            if @reader.save
                
                flash[:success] = 'Thank you for registering.'
                
            else
                flash[:danger] = 'Something wrong occured, please try again.'
                
            end
        end
    
    end
        
    private
    
        def reader_params
            params.require(:reader).permit(:email)
        end
end