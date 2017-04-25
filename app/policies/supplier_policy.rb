class SupplierPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
    def edit
      user.admin?
    end
  end

  def destroy?
    user.admin?
  end

  def edit?
    user.admin?
  end
end
