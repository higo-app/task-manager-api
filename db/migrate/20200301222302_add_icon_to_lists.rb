# frozen_string_literal: true

class AddIconToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :icon, :string, null: false, default: 'done_outline'
  end
end
