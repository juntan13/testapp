# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    elsif user.user?
      can :read, Article
      can :create, Article
      can :update, Article do |article|
        article.try(:user) == user
      end
      can :destroy, Article do |article|
        article.try(:user) == user
      end
    elsif user.regular?
      can :read, Article
    end
  end
end
