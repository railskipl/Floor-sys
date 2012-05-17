class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
         
  

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:company_id, :first_name, :surname, :job_title, :address_line1, :address_line2, :address_line3, :city, :postcodeuk, :land_line, :mobile_numbers, :county, :username, :role_ids, :admin_id, :userimage
  mount_uploader :userimage, UserimageUploader
  
  validates_presence_of             :first_name, :surname, :job_title, :address_line1,
                                     :city,  :mobile_numbers, :county
   validates_length_of               :first_name, :maximum=>30
   validates_length_of               :surname, :maximum=>30, :message=>"less than %d if you don't mind"
   validates_format_of               :mobile_numbers, 
                                     :with => /^\(?[0-9]{3}\)?|[0-9]{3}[-. ]? [0-9]{3}[-. ]?[0-9]{4}$/
  
  def role?(role)
      return !!self.roles.find_by_name(role.to_s)
  end
  
                                            
   def update_with_password(params={}) 
     if params[:password].blank? 
       params.delete(:password) 
       params.delete(:password_confirmation) if 
       params[:password_confirmation].blank? 
     end 
     update_attributes(params) 
   end      
     
     
      
end
