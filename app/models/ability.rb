# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new
    if user.is? :admin
      can :manage, :all
    elsif can :manage, Post, author_id: user.id
      can :manage, Comment, author_id: user.id
      can :read, :all
    else
      can :read, :all
    end
  end
end
