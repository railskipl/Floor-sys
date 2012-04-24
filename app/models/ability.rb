class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    # check if user is 'super' grant all permissions
    if user.role? :super_admin
      can :manage, [User]
      can :manage, [Company]
      # check if user is 'admin' grant only 'update', 'new', 'manage' permissions
    elsif user.role? :company_admin
     
      can :read, [User]
      can :manage, [User]
      can :manage, [Contact]
      can :manage, [Customer]
      # check if user is staff grant only 'read & 'manage' permissions
    elsif user.role? :staff
      can :read, [User]
      can :manage, [User]
      can :manage, [Contact]
      can :manage, [Customer]
    else
      can :manage, [Role]
      can :manage, [Contact]
      can :manage, [Customer]
    end
  end
  
end
