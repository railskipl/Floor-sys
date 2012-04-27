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
      can :read,   [User]
      can :manage, [User]
      can :manage, [Contact]
      can :manage, [Customer]
      can :manage, [Prospect]
      can :manage, [SaleRepresentative]
      can :manage, [Subcontractor]
      can :manage, [Supplier]
      can :manage, [ProductBacking]
      can :manage, [ProductFibre]
      can :manage, [ProductGroup]
      can :manage, [ProductStyleType]
      can :manage, [ProductType]
      can :manage, [ProductWear]
      can :manage, [Product]    
      # check if user is staff grant only 'read & 'manage' permissions
    elsif user.role? :staff
      can :read,   [User]
      can :manage, [User]
      can :manage, [Contact]
      can :manage, [Customer]
      can :manage, [Prospect]
      can :manage, [SaleRepresentative]
      can :manage, [Subcontractor]
      can :manage, [Supplier]
      can :manage, [ProductBacking]
      can :manage, [ProductFibre]
      can :manage, [ProductGroup]
      can :manage, [ProductStyleType]
      can :manage, [ProductType]
      can :manage, [ProductWear]
      can :manage, [Product]
    else
      can :manage, [Role]
      can :manage, [Contact]
      can :manage, [Customer]
      can :manage, [Prospect]
      can :manage, [SaleRepresentative]
      can :manage, [Subcontractor]
      can :manage, [Supplier]
      can :manage, [ProductBacking]
      can :manage, [ProductFibre]
      can :manage, [ProductGroup]
      can :manage, [ProductStyleType]
      can :manage, [ProductType]
      can :manage, [ProductWear]
      can :manage, [Product]
    end
  end
  
end
