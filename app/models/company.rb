class Company < ActiveRecord::Base
  
  has_attached_file :logo, 
        :styles => { :thumb => "80x75" },
       
       
        :path => "company/:id/:style/:basename.:extension", 
                        :storage => :s3,
                        :bucket => 'floor_sys',
                        :s3_permissions => 'authenticated-read',
                        :s3_protocol => "http",
                        :s3_credentials => { :access_key_id => ENV['AKIAIWWQF5REKTC4ZYGQ'],
                                             :secret_access_key => ENV['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'] },
        
        
       
        
        :convert_options => {
              :thumb => "-background '#F7F4F4' -compose Copy -gravity center -extent 80x75"
          }
          
          
         
          
end
