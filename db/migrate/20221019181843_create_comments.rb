class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :student_id
      t.integer :session_id
      t.string :description

      t.timestamps
    end
  end
end
