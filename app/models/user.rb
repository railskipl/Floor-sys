class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
         
  

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:company_id, :first_name, :surname, :job_title, :address_line1, :address_line2, :address_line3, :city, :postcode, :fix_line, :mobile_number, :county, :username, :role_ids, :admin_id
  
  validates_presence_of             :first_name, :surname, :job_title, :address_line1, :address_line2, :address_line3, 
                                    :city, :postcode, :fix_line, :mobile_number, :county, :username
  validates_numericality_of         :mobile_number, :postcode, :on => :create
  validates_length_of               :first_name, :maximum=>30
  validates_length_of               :surname, :maximum=>30, :message=>"less than %d if you don't mind"
  validates_length_of               :username, :within => 4..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  
  def role?(role)
      return !!self.roles.find_by_name(role.to_s)
  end
end
