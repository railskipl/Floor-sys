class Company < ActiveRecord::Base
  
  has_attached_file :logo, 
        :styles => { :thumb => "80x75" },
        
        :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
        :path => "users/:id/:style/:basename.:extension", 
        
        :convert_options => {
              :thumb => "-background '#F7F4F4' -compose Copy -gravity center -extent 80x75"
          }
          
      
                           
end
