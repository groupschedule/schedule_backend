class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.string :session_name
      t.integer :cohort_id
      t.integer :technical_mentor_id
      t.date :date
      t.time :time
      t.string :link
      t.text :announcement

      t.timestamps
    end
  end
end
