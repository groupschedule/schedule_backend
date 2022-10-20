class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.integer :technical_mentor_id
      t.integer :session_id
      t.string :description

      t.timestamps
    end
  end
end
