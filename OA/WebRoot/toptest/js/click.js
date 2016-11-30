$(function(){
	
	$("li a").each(function(){
		$("#a1").attr("select","selected");
		var check = $(this).attr("select");
		if(check=="selected"){
			$("a").addClass("default").removeClass("checked");
            $(this).addClass("checked").removeClass("default");
		}
		
        $(this).click(function(){
        	
            $("a").addClass("default").removeClass("checked").attr("select","");
            
            $(this).addClass("checked").removeClass("default").attr("select","selected");
       		     
        });

    });
	
});