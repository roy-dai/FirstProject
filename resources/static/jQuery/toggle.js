jQuery(function(){
    jQuery(`[data-collapsable-parent]`).click(function(){ 
    var child = jQuery(this).attr("data-collapsable-parent"); 
    jQuery('[data-collapsable-child="'+ child + '"]').slideToggle(200,function(){}); 
    });
    
	jQuery('.fadeIn').on('click',function(){
	            var posX = jQuery(this).offset().left+40;
	            var posY = jQuery(this).offset().top+20;
	            jQuery('#product').css({'left':posX,'top':posY})
	            jQuery('#product').toggle("slow")
			})
})