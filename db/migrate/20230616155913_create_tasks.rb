# frozen_string_literal: true

# This migration creates the tasks table
class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, limit: 255
      t.string :description
      t.boolean :done, default: false, null: false

      t.timestamps
    end
  end
end
