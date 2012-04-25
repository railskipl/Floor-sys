class Company < ActiveRecord::Base
  
  has_attached_file :logo, 
        :path => "company/:id/:style/:basename.:extension", 
        :storage => :s3,
        :bucket => ENV['floor_sys'],
        :s3_permissions => 'authenticated-read',
        :s3_protocol => "http",
        :s3_credentials => { :access_key_id => ENV['AKIAIWWQF5REKTC4ZYGQ'],
                             :secret_access_key => ENV['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'] },
        :styles => { :thumb => "120x120>" }
          
          
                          
          
                  
end
