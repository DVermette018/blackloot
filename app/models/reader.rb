class Reader < ActiveRecord::Base
   
    validates :email, presence: true
    validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
    
end