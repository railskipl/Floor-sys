class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:company_id, :first_name, :surname, :job_title, :address_line1, :address_line2, :address_line3, :city, :postcode, :fix_line, :mobile_number, :county, :username, :role_ids, :admin_id
  
  def role?(role)
      return !!self.roles.find_by_name(role.to_s.camelize)
  end
end
