# frozen_string_literal: true

class AddMetadataToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :metadata, :json
  end
end
