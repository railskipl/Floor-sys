

jQuery(document).ready(function()
{
	jQuery("#checkall").click(function()
	{
		
		var checked_status = this.checked;
		jQuery("input[type=checkbox]").each(function()
		{
			this.checked = checked_status;
			
		});
	});
	
   jQuery(".check").click(function(){
   	
   	
	var flag = false;
	
	jQuery("input[type=checkbox]").each(function()
    {
              if(this.checked == true)
              {
              	flag = true;
              }
                          
     });
                
         if (flag == false) {
                        alert("Please Select Contact");
                        return false;
                }
                if (flag == true) {
                       
                        
                }
                
     });  
     
     
        jQuery(".check1").click(function(){
   	
   	
	var flag = false;
	
	jQuery("input[type=checkbox]").each(function()
    {
              if(this.checked == true)
              {
              	flag = true;
              }
                          
     });
                
         if (flag == false) {
                        alert("Please Select Contact!");
                        return false;
                }
                if (flag == true) {
                       
                        
                }
                
     }); 
     
     
     
     
     
     
   }); 
