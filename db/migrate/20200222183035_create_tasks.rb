# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :note
      t.references :list, foreign_key: true
      t.boolean :done
      t.date :due_date

      t.timestamps
    end
  end
end
