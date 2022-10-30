class CreateCohorts < ActiveRecord::Migration[7.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.text :description
      t.integer :technical_mentor_id
      

      t.timestamps
    end
  end
end
