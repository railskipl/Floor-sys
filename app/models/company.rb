class Company < ActiveRecord::Base
  
  has_attached_file :logo, 
                    :styles => { :thumb => "230x200" },
                    :storage => :s3 ,
                    
                    :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                    :bucket =>"stbgroup",
                    :path => "public/attachments/artist-photos/:id/:style/:basename.:extension",
                    :convert_options => {
                                            
                            :thumb => "-background '#C7CCD2' -compose Copy -gravity center -extent 230x200"
                    }
  validates_attachment_presence :logo
          
      
                           
end
