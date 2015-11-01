$(document).ready(function(){
    
    $('#sign-in-btn').click(function(){
        
        if( $('#reader_email').val().length === 0 ){
            
            $("#new-reader-fail").slideDown( 200 ).delay( 2000 ).slideUp( 200 );
            
        }
        
        else {
        
            var email = $('#reader_email').val();
        
            if ( isEmail(email) ){
                $('#signInForm').slideUp( 200 )
                $("#new-reader-success").slideDown( 200 );
            }
            
            else {
                
                ("#new-reader-fail").slideDown( 200 ).delay( 2000 ).slideUp( 200 );
            }
        
        }
        
    });
    
    function isEmail(email) {
        var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        return regex.test(email);
    }
});