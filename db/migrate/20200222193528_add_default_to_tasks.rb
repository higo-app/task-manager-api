# frozen_string_literal: true

class AddDefaultToTasks < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :done, :boolean, default: false
  end
end
