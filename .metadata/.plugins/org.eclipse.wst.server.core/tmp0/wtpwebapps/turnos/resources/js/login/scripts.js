


jQuery(document).ready(function() {
	
    /*
        Fullscreen background
*/
    $.backstretch("../resources/img/1.jpg");
    
    
    
    /*
        Form validation
    */
    $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function() {
    	$(this).removeClass('input-error');
    });
    
    $('.login-form').on('submit', function(e) {
    	
    	$(this).find('input[type="text"], input[type="password"], textarea').each(function(){
    		if( $(this).val() == "" ) {
    			e.preventDefault();
    			$(this).addClass('input-error');
    		}
    		else {
    			$(this).removeClass('input-error');
    		}
    	});
    	
    });
     
});



$("#form").submit(function(e){
	$.ajax({
        url:  "../login/",
        type: $(this).attr("method"),
        data: $(this).serialize(),
        dataType: "text",
        success: function (data)
        {
        	if(data === "existe"){
         		$('#form-username').removeClass('input-error');
        		$('#form-password').removeClass('input-error');
        		alert('ingreso');
        	}else{
        		$('#form-username').addClass('input-error');
        		$('#form-password').addClass('input-error');
        	}
        	
        	
        },
        error: function (xhr, ajaxOptions, thrownError) {
        }
    });
});


