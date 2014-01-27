class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:

  user ||= User.new # guest user (not logged in)
  if user.admin?
    can :manage, :all
  elsif user.email
    can [:show, :index, :new, :create], Ad
    can [:edit, :update, :destroy], Ad do |ad|
        user.id == ad.user_id
    end
    can :read, [Ad, SearchAd]

    can :show, User
    can [:edit, :update, :destroy], User do |user|
       user.id == user.id
    end

    can [:show, :index, :new, :create], Galery
    can [:edit, :update, :destroy], Galery do |g|
        user.id == g.user_id
    end    
  else
    can :read, [Ad, SearchAd]

    can :read, Galery
  end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities
  end
end
