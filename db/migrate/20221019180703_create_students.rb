class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.integer :cohort_id
      t.string :name
      t.string :email
      t.integer :phone
      t.string :image
      t.integer :module_id

      t.timestamps
    end
  end
end
