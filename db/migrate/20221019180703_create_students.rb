# frozen_string_literal: true

class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :cohort_id
      t.string :name
      t.string :email
      t.integer :phone
      t.string :image
      t.string :password_digest

      t.timestamps
    end
  end
end
