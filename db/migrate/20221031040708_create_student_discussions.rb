class CreateStudentDiscussions < ActiveRecord::Migration[7.0]
  def change
    create_table :student_discussions do |t|

      t.integer :discussion_id
      t.integer :student_id
      t.text :comment

      t.timestamps
    end
  end
end
