class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable
         
  attr_accessor :login

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:company_id, :first_name, :surname, :job_title, :address_line1, :address_line2, :address_line3, :city, :postcode, :fix_line, :mobile_number, :county, :username, :role_ids, :admin_id, :login
  
  validates_presence_of             :first_name, :surname, :job_title, :address_line1, :address_line2, :address_line3, 
                                    :city, :postcode, :fix_line, :mobile_number, :county, :username
  validates_numericality_of         :mobile_number, :postcode, :on => :create
  validates_length_of               :first_name, :maximum=>30
  validates_length_of               :surname, :maximum=>30, :message=>"less than %d if you don't mind"
  validates_length_of               :username, :within => 4..20, :too_long => "pick a shorter name", :too_short => "pick a longer name"
  
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
     
    

    def self.find_for_authentication(warden_conditions)
       conditions = warden_conditions.dup
       login = conditions.delete(:login)
       where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
     end
     
     protected
     
     def self.reset_password_keys
     [:login]
     end

      # Attempt to find a user by it's email. If a record is found, send new
      # password instructions to it. If not user is found, returns a new user
      # with an email not found error.
      def self.send_reset_password_instructions(attributes={})
        recoverable = find_recoverable_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
        recoverable.send_reset_password_instructions if recoverable.persisted?
        recoverable
      end 

      def self.find_recoverable_or_initialize_with_errors(required_attributes, attributes, error=:invalid)
        (case_insensitive_keys || []).each { |k| attributes[k].try(:downcase!) }

        attributes = attributes.slice(*required_attributes)
        attributes.delete_if { |key, value| value.blank? }

        if attributes.size == required_attributes.size
          if attributes.has_key?(:login)
             login = attributes.delete(:login)
             record = find_record(login)
          else  
            record = where(attributes).first
          end  
        end  

        unless record
          record = new

          required_attributes.each do |key|
            value = attributes[key]
            record.send("#{key}=", value)
            record.errors.add(key, value.present? ? error : :blank)
          end  
        end  
        record
      end

      def self.find_record(login)
        where(["username = :value OR email = :value", { :value => login }]).first
      end
      
end
