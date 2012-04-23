class Company < ActiveRecord::Base
  
  has_attached_file :logo, 
        :styles => { :thumb => "80x75" },
       
        
        
        :convert_options => {
              :thumb => "-background '#F7F4F4' -compose Copy -gravity center -extent 80x75"
          }
          
          
         
          
end
