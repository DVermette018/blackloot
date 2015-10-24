class Users Controller < Application Controller
    def new
        
    end
    
    def create
        @user = User.new(contact_params)
            if @user.save
            else
            end
            
            
            
            private
            
            def contact_params
                params.require(
                    
                :fname,:lname,:email,
                
                :shirtType,:shirtSize,:subscriptionColor,:subscriptionPlan,
                
                :shippingAddress,:shippingDoor,:shippingCity,:shippingState,:shippingCountry,:shippingZip,
                
                :billingAddress,:billingDoor,:billingCity,:billingState,:billingCountry,:billingZip,
                
                ).permit(:age)
            
            end
    end
end