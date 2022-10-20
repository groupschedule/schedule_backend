class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.integer :cohort_id
      t.integer :technical_mentor_id
      t.date :date
      t.string :link

      t.timestamps
    end
  end
end
