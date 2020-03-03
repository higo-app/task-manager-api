# frozen_string_literal: true

class TaskPolicy < ApplicationPolicy
  class Scope < Scope
  end

  def toggle?
    record.list.user == user
  end

  def destroy?
    record.list.user == user
  end
end
