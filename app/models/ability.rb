class Ability
  include CanCan::Ability
 
  def initialize(user)
    user ||= User.new # guest user
 
    if user.role? :admin
      can :manage, :all
    elsif user.role? :author
      can :manage, Screencast
    else
      can :read, :all
    end
  end
end