# frozen_string_literal: true

class AddMetadataToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :metadata, :json
  end
end
