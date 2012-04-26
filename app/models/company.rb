class Company < ActiveRecord::Base
  
  has_attached_file :logo, 
        :styles => { :thumb => "80x75" },
        
       
        :storage => :s3,
                            :bucket => "csoffice",
                            :s3_credentials => {
                              'access_key_id' => "AKIAIWWQF5REKTC4ZYGQ",
                              'secret_access_key' => "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"
                            },
        :path => "users/:id/:style/:basename.:extension", 
        
        :convert_options => {
              :thumb => "-background '#F7F4F4' -compose Copy -gravity center -extent 80x75"
          }
          
      
                           
end
