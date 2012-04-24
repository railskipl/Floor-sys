class Company < ActiveRecord::Base
  
  has_attached_file :logo, 
        :styles => { :thumb => "80x75" },
       
       
        
                
                :storage => :s3,
                                :s3_credentials => Rails.root.join("config/s3.yml"),
                                :bucket => 'floor_sys',
                                :s3_permissions => :public_read,
                                :path => "company/:id/:style/:basename.:extension",
                
        
        :convert_options => {
              :thumb => "-background '#F7F4F4' -compose Copy -gravity center -extent 80x75"
          }
          
          
         
          
end
