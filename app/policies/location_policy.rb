class LocationPolicy < ApplicationPolicy
  def destroy?
    user.admin?
  end
  def edit?
    user.admin? || record.supplier.user == user
  end
end
