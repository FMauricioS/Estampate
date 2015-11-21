class ApplicationPolicy
  attr_reader :user, :shirt

  def initialize(user, shirt)
    @user = user
    @shirt = shirt
  end

  # Método pertenece a un método index en un controlador
  def index?
    false
  end

  def show?
    scope.where(:id => shirt.id).exists?
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  def scope
    Pundit.policy_scope!(user, shirt.class)
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      scope
    end
  end
end
