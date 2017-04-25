class ResourcePolicy < ApplicationPolicy
  def destroy?
    user.admin?
  end
  def edit?
    user.admin? 
  end
end
